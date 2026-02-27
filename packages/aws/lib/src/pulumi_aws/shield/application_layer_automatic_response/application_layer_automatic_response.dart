import 'package:pulumi/pulumi.dart';
import '../application_layer_automatic_response_timeouts/application_layer_automatic_response_timeouts.dart';
import 'application_layer_automatic_response_args.dart';

/// Resource for managing an AWS Shield Application Layer Automatic Response for automatic DDoS mitigation.
///
/// ## Example Usage
///
/// ### Basic Usage
class ApplicationLayerAutomaticResponse extends CustomResource {
  /// One of `COUNT` or `BLOCK`
  late final Output<String> action;

  /// ARN of the resource to protect (Cloudfront Distributions and ALBs only at this time).
  late final Output<String> resourceArn;
  late final Output<ApplicationLayerAutomaticResponseTimeouts?> timeouts;

  ApplicationLayerAutomaticResponse(
    String name, {
    ApplicationLayerAutomaticResponseArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:shield/applicationLayerAutomaticResponse:ApplicationLayerAutomaticResponse',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.timeouts =
        registerOutput<ApplicationLayerAutomaticResponseTimeouts?>('timeouts');
  }
}
