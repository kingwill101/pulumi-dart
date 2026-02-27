import 'package:pulumi/pulumi.dart' as pulumi;
import '../configuration_set_delivery_options/configuration_set_delivery_options.dart';
import '../configuration_set_tracking_options/configuration_set_tracking_options.dart';
import 'configuration_set_args.dart';

/// Provides an SES configuration set resource.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
///
/// ### Require TLS Connections
///
///
///
/// ### Tracking Options
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SES Configuration Sets using their `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ses/configurationSet:ConfigurationSet test some-configuration-set-test
/// ```
class ConfigurationSet extends pulumi.CustomResource {
  /// SES configuration set ARN.
  late final pulumi.Output<String> arn;

  /// Whether messages that use the configuration set are required to use TLS. See below.
  late final pulumi.Output<ConfigurationSetDeliveryOptions?> deliveryOptions;

  /// Date and time at which the reputation metrics for the configuration set were last reset. Resetting these metrics is known as a fresh start.
  late final pulumi.Output<String> lastFreshStart;

  /// Name of the configuration set.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether or not Amazon SES publishes reputation metrics for the configuration set, such as bounce and complaint rates, to Amazon CloudWatch. The default value is `false`.
  late final pulumi.Output<bool?> reputationMetricsEnabled;

  /// Whether email sending is enabled or disabled for the configuration set. The default value is `true`.
  late final pulumi.Output<bool?> sendingEnabled;

  /// Domain that is used to redirect email recipients to an Amazon SES-operated domain. See below. **NOTE:** This functionality is best effort.
  late final pulumi.Output<ConfigurationSetTrackingOptions?> trackingOptions;

  ConfigurationSet(
    String name, {
    ConfigurationSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/configurationSet:ConfigurationSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deliveryOptions =
        registerOutput<ConfigurationSetDeliveryOptions?>('deliveryOptions');
    this.lastFreshStart = registerOutput<String>('lastFreshStart');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.reputationMetricsEnabled =
        registerOutput<bool?>('reputationMetricsEnabled');
    this.sendingEnabled = registerOutput<bool?>('sendingEnabled');
    this.trackingOptions =
        registerOutput<ConfigurationSetTrackingOptions?>('trackingOptions');
  }
}
