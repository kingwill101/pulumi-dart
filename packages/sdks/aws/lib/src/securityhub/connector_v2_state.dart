// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_v2_connector_provider.dart';
import 'connector_v2_health.dart';

/// Input properties used for looking up and filtering ConnectorV2 resources.
class ConnectorV2State {
  /// ARN of the connector.
  final pulumi.Input<String>? arn;
  /// ID of the connector.
  final pulumi.Input<String>? connectorId;
  /// Third-party provider details. See `connectorProvider` below.
  final pulumi.Input<ConnectorV2ConnectorProvider>? connectorProvider;
  /// A description of the connector.
  final pulumi.Input<String>? description;
  /// Current health status. See `health` below.
  final pulumi.Input<List<ConnectorV2Health>>? healths;
  /// ARN of KMS key for connector encryption.
  final pulumi.Input<String>? kmsKeyArn;
  /// The name of the connector.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ConnectorV2State].
  /// [arn] ARN of the connector.
  /// [connectorId] ID of the connector.
  /// [connectorProvider] Third-party provider details. See `connectorProvider` below.
  /// [description] A description of the connector.
  /// [healths] Current health status. See `health` below.
  /// [kmsKeyArn] ARN of KMS key for connector encryption.
  /// [name] The name of the connector.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ConnectorV2State({
    this.arn,
    this.connectorId,
    this.connectorProvider,
    this.description,
    this.healths,
    this.kmsKeyArn,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'connectorId': ?connectorId,
      'connectorProvider': ?pulumi.Input.mapOptionalInputValue<ConnectorV2ConnectorProvider, Map<String, dynamic>>(connectorProvider, (value) => value.toMap()),
      'description': ?description,
      'healths': ?pulumi.Input.mapOptionalInputValue<List<ConnectorV2Health>, List<Map<String, dynamic>>>(healths, (value) => pulumi.Input.encodeList<ConnectorV2Health, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ConnectorV2State.fromMap(Map<String, dynamic> map) {
    return ConnectorV2State(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorId: (() { final guardedValue = map['connectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorProvider: (() { final guardedValue = map['connectorProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorV2ConnectorProvider.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healths: (() { final guardedValue = map['healths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectorV2Health>(guardedValue, (value) => ConnectorV2Health.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
