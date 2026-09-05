// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_v2_connector_provider.dart';

/// {@template pulumi_securityhub_connector_v2_connector_v2_args_doc}
/// The set of arguments for ConnectorV2.
/// {@endtemplate}
/// {@macro pulumi_securityhub_connector_v2_connector_v2_args_doc}
class ConnectorV2Args {
  /// Third-party provider details. See `connectorProvider` below.
  final pulumi.Input<ConnectorV2ConnectorProvider> connectorProvider;
  /// A description of the connector.
  final pulumi.Input<String?>? description;
  /// ARN of KMS key for connector encryption.
  final pulumi.Input<String?>? kmsKeyArn;
  /// The name of the connector.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ConnectorV2Args].
  /// [connectorProvider] Third-party provider details. See `connectorProvider` below.
  /// [description] A description of the connector.
  /// [kmsKeyArn] ARN of KMS key for connector encryption.
  /// [name] The name of the connector.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ConnectorV2Args({
    required this.connectorProvider,
    this.description,
    this.kmsKeyArn,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorProvider': pulumi.Input.mapInputValue<ConnectorV2ConnectorProvider, Map<String, dynamic>>(connectorProvider, (value) => value.toMap()),
      'description': ?description,
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ConnectorV2Args.fromMap(Map<String, dynamic> map) {
    return ConnectorV2Args(
      connectorProvider: pulumi.Input.fromValue(ConnectorV2ConnectorProvider.fromMap((map['connectorProvider']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
