import 'package:pulumi/pulumi.dart';
import 'connection_confirmation_args.dart';

/// Provides a confirmation of the creation of the specified hosted connection on an interconnect.
class ConnectionConfirmation extends CustomResource {
  /// The ID of the hosted connection.
  late final Output<String> connectionId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ConnectionConfirmation(
    String name, {
    ConnectionConfirmationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/connectionConfirmation:ConnectionConfirmation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectionId = registerOutput<String>('connectionId');
    this.region = registerOutput<String>('region');
  }
}
