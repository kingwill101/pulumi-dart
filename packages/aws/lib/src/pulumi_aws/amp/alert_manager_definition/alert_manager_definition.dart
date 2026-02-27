import 'package:pulumi/pulumi.dart';
import 'alert_manager_definition_args.dart';

/// Manages an Amazon Managed Service for Prometheus (AMP) Alert Manager Definition
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the prometheus alert manager definition using the workspace identifier. For example:
///
/// ```sh
/// $ pulumi import aws:amp/alertManagerDefinition:AlertManagerDefinition demo ws-C6DCB907-F2D7-4D96-957B-66691F865D8B
/// ```
class AlertManagerDefinition extends CustomResource {
  /// the alert manager definition that you want to be applied. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-alert-manager.html).
  late final Output<String> definition;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the prometheus workspace the alert manager definition should be linked to
  late final Output<String> workspaceId;

  AlertManagerDefinition(
    String name, {
    AlertManagerDefinitionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:amp/alertManagerDefinition:AlertManagerDefinition',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.definition = registerOutput<String>('definition');
    this.region = registerOutput<String>('region');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
