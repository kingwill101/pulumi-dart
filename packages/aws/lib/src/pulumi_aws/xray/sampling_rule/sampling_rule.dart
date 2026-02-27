import 'package:pulumi/pulumi.dart';
import 'sampling_rule_args.dart';

/// Creates and manages an AWS XRay Sampling Rule.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import XRay Sampling Rules using the name. For example:
///
/// ```sh
/// $ pulumi import aws:xray/samplingRule:SamplingRule example example
/// ```
class SamplingRule extends CustomResource {
  /// The ARN of the sampling rule.
  late final Output<String> arn;

  /// Matches attributes derived from the request.
  late final Output<Map<String, String>?> attributes;

  /// The percentage of matching requests to instrument, after the reservoir is exhausted.
  late final Output<double> fixedRate;

  /// Matches the hostname from a request URL.
  late final Output<String> host;

  /// Matches the HTTP method of a request.
  late final Output<String> httpMethod;

  /// The priority of the sampling rule.
  late final Output<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A fixed number of matching requests to instrument per second, prior to applying the fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.
  late final Output<int> reservoirSize;

  /// Matches the ARN of the AWS resource on which the service runs.
  late final Output<String> resourceArn;

  /// The name of the sampling rule.
  late final Output<String?> ruleName;

  /// Matches the `name` that the service uses to identify itself in segments.
  late final Output<String> serviceName;

  /// Matches the `origin` that the service uses to identify its type in segments.
  late final Output<String> serviceType;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Matches the path from a request URL.
  late final Output<String> urlPath;

  /// The version of the sampling rule format (`1` )
  late final Output<int> version;

  SamplingRule(
    String name, {
    SamplingRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:xray/samplingRule:SamplingRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attributes = registerOutput<Map<String, String>?>('attributes');
    this.fixedRate = registerOutput<double>('fixedRate');
    this.host = registerOutput<String>('host');
    this.httpMethod = registerOutput<String>('httpMethod');
    this.priority = registerOutput<int>('priority');
    this.region = registerOutput<String>('region');
    this.reservoirSize = registerOutput<int>('reservoirSize');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.ruleName = registerOutput<String?>('ruleName');
    this.serviceName = registerOutput<String>('serviceName');
    this.serviceType = registerOutput<String>('serviceType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.urlPath = registerOutput<String>('urlPath');
    this.version = registerOutput<int>('version');
  }
}
