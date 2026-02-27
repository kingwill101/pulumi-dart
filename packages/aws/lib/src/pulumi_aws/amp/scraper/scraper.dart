import 'package:pulumi/pulumi.dart';
import '../scraper_destination/scraper_destination.dart';
import '../scraper_role_configuration/scraper_role_configuration.dart';
import '../scraper_source/scraper_source.dart';
import '../scraper_timeouts/scraper_timeouts.dart';
import 'scraper_args.dart';

/// > **Note:** If you change a Scraper's source (EKS cluster), Terraform
/// will delete the current Scraper and create a new one.
///
/// Provides an Amazon Managed Service for Prometheus fully managed collector
/// (scraper).
///
/// Read more in the [Amazon Managed Service for Prometheus user guide](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Use default EKS scraper configuration
///
/// You can use the data source `aws_prometheus_scraper_configuration` to use a
/// service managed scrape configuration.
///
///
///
/// ### Ignoring changes to Prometheus Workspace destination
///
/// A managed scraper will add a `AMPAgentlessScraper` tag to its Prometheus workspace
/// destination. To avoid Terraform state forcing removing the tag from the workspace,
/// you can add this tag to the destination workspace (preferred) or ignore tags
/// changes with `lifecycle`. See example below.
///
///
///
/// ### Configure aws-auth
///
/// Your source Amazon EKS cluster must be configured to allow the scraper to access
/// metrics. Follow the [user guide](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-eks-setup)
/// to setup the appropriate Kubernetes permissions.
///
/// ### Cross-Account Configuration
///
/// This setup allows the scraper, running in a source account, to remote write its collected metrics to a workspace in a target account. Note that:
///
/// - The target Role and target Workspace must be in the same account
/// - The source Scraper and target Workspace must be in the same Region
///
/// Follow [the AWS Best Practices guide](https://aws-observability.github.io/observability-best-practices/patterns/ampxa) to learn about the IAM roles configuration and overall setup.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the Managed Scraper using its identifier.
/// For example:
///
/// ```sh
/// $ pulumi import aws:amp/scraper:Scraper example s-0123abc-0000-0123-a000-000000000000
/// ```
class Scraper extends CustomResource {
  /// a name to associate with the managed scraper. This is for your use, and does not need to be unique.
  late final Output<String?> alias;

  /// The Amazon Resource Name (ARN) of the new scraper.
  late final Output<String> arn;

  /// Configuration block for the managed scraper to send metrics to. See `destination`.
  late final Output<ScraperDestination> destination;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the IAM role that provides permissions for the scraper to discover, collect, and produce metrics
  late final Output<String> roleArn;

  /// Configuration block to enable writing to an Amazon Managed Service for Prometheus workspace in a different account. See `role_configuration` below.
  late final Output<ScraperRoleConfiguration?> roleConfiguration;

  /// The configuration file to use in the new scraper. For more information, see [Scraper configuration](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration).
  late final Output<String> scrapeConfiguration;

  /// Configuration block to specify where the managed scraper will collect metrics from. See `source`.
  ///
  /// The following arguments are optional:
  late final Output<ScraperSource?> source;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;
  late final Output<ScraperTimeouts?> timeouts;

  Scraper(
    String name, {
    ScraperArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:amp/scraper:Scraper',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String?>('alias');
    this.arn = registerOutput<String>('arn');
    this.destination = registerOutput<ScraperDestination>('destination');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.roleConfiguration =
        registerOutput<ScraperRoleConfiguration?>('roleConfiguration');
    this.scrapeConfiguration = registerOutput<String>('scrapeConfiguration');
    this.source = registerOutput<ScraperSource?>('source');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ScraperTimeouts?>('timeouts');
  }
}
