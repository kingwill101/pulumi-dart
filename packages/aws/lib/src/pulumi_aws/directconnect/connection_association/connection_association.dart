import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_association_args.dart';

/// Associates a Direct Connect Connection with a LAG.
class ConnectionAssociation extends pulumi.CustomResource {
  /// The ID of the connection.
  late final pulumi.Output<String> connectionId;

  /// The ID of the LAG with which to associate the connection.
  late final pulumi.Output<String> lagId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  ConnectionAssociation(
    String name, {
    ConnectionAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/connectionAssociation:ConnectionAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionId = registerOutput<String>('connectionId');
    this.lagId = registerOutput<String>('lagId');
    this.region = registerOutput<String>('region');
  }
}
