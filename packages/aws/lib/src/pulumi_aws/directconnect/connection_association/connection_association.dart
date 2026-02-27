import 'package:pulumi/pulumi.dart';
import 'connection_association_args.dart';

/// Associates a Direct Connect Connection with a LAG.
class ConnectionAssociation extends CustomResource {
  /// The ID of the connection.
  late final Output<String> connectionId;

  /// The ID of the LAG with which to associate the connection.
  late final Output<String> lagId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ConnectionAssociation(
    String name, {
    ConnectionAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/connectionAssociation:ConnectionAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectionId = registerOutput<String>('connectionId');
    this.lagId = registerOutput<String>('lagId');
    this.region = registerOutput<String>('region');
  }
}
