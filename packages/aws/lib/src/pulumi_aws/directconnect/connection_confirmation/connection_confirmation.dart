import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_confirmation_args.dart';

/// Provides a confirmation of the creation of the specified hosted connection on an interconnect.
class ConnectionConfirmation extends pulumi.CustomResource {
  /// The ID of the hosted connection.
  late final pulumi.Output<String> connectionId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  ConnectionConfirmation(
    String name, {
    ConnectionConfirmationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/connectionConfirmation:ConnectionConfirmation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionId = registerOutput<String>('connectionId');
    this.region = registerOutput<String>('region');
  }
}
