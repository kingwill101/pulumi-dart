import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_layer_automatic_response_timeouts/application_layer_automatic_response_timeouts.dart';
import 'application_layer_automatic_response_args.dart';

/// Resource for managing an AWS Shield Application Layer Automatic Response for automatic DDoS mitigation.
///
/// ## Example Usage
///
/// ### Basic Usage
class ApplicationLayerAutomaticResponse extends pulumi.CustomResource {
  /// One of `COUNT` or `BLOCK`
  late final pulumi.Output<String> action;

  /// ARN of the resource to protect (Cloudfront Distributions and ALBs only at this time).
  late final pulumi.Output<String> resourceArn;
  late final pulumi.Output<ApplicationLayerAutomaticResponseTimeouts?> timeouts;

  ApplicationLayerAutomaticResponse(
    String name, {
    ApplicationLayerAutomaticResponseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:shield/applicationLayerAutomaticResponse:ApplicationLayerAutomaticResponse',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.timeouts =
        registerOutput<ApplicationLayerAutomaticResponseTimeouts?>('timeouts');
  }
}
