import 'package:pulumi/pulumi.dart';
import 'metrics_destination_args.dart';

/// Provides a CloudWatch RUM Metrics Destination resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudwatch RUM Metrics Destination using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:rum/metricsDestination:MetricsDestination example example
/// ```
class MetricsDestination extends CustomResource {
  /// The name of the CloudWatch RUM app monitor that will send the metrics.
  late final Output<String> appMonitorName;

  /// Defines the destination to send the metrics to. Valid values are `CloudWatch` and `Evidently`. If you specify `Evidently`, you must also specify the ARN of the CloudWatchEvidently experiment that is to be the destination and an IAM role that has permission to write to the experiment.
  late final Output<String> destination;

  /// Use this parameter only if Destination is Evidently. This parameter specifies the ARN of the Evidently experiment that will receive the extended metrics.
  late final Output<String?> destinationArn;

  /// This parameter is required if Destination is Evidently. If Destination is CloudWatch, do not use this parameter.
  late final Output<String?> iamRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  MetricsDestination(
    String name, {
    MetricsDestinationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rum/metricsDestination:MetricsDestination',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appMonitorName = registerOutput<String>('appMonitorName');
    this.destination = registerOutput<String>('destination');
    this.destinationArn = registerOutput<String?>('destinationArn');
    this.iamRoleArn = registerOutput<String?>('iamRoleArn');
    this.region = registerOutput<String>('region');
  }
}
