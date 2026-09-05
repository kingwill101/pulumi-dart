// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quick_connect_quick_connect_config.dart';

/// Result data returned by getQuickConnect.
class GetQuickConnectResult {
  /// ARN of the Quick Connect.
  final String? arn;
  /// Description of the Quick Connect.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  final String? name;
  /// A block that defines the configuration information for the Quick Connect: `quickConnectType` and one of `phoneConfig`, `queueConfig`, `userConfig` . The Quick Connect Config block is documented below.
  final List<GetQuickConnectQuickConnectConfig>? quickConnectConfigs;
  /// Identifier for the Quick Connect.
  final String? quickConnectId;
  final String? region;
  /// Map of tags to assign to the Quick Connect.
  final Map<String, String>? tags;

  /// Creates a new [GetQuickConnectResult].
  /// [arn] ARN of the Quick Connect.
  /// [description] Description of the Quick Connect.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [name] Optional.
  /// [quickConnectConfigs] A block that defines the configuration information for the Quick Connect: `quickConnectType` and one of `phoneConfig`, `queueConfig`, `userConfig` . The Quick Connect Config block is documented below.
  /// [quickConnectId] Identifier for the Quick Connect.
  /// [region] Optional.
  /// [tags] Map of tags to assign to the Quick Connect.
  const GetQuickConnectResult({
    this.arn,
    this.description,
    this.id,
    this.instanceId,
    this.name,
    this.quickConnectConfigs,
    this.quickConnectId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'instanceId': ?instanceId,
      'name': ?name,
      'quickConnectConfigs': ?(() { final guardedValue = quickConnectConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetQuickConnectQuickConnectConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'quickConnectId': ?quickConnectId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetQuickConnectResult.fromMap(Map<String, dynamic> map) {
    return GetQuickConnectResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quickConnectConfigs: (() { final guardedValue = map['quickConnectConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetQuickConnectQuickConnectConfig>(guardedValue, (value) => GetQuickConnectQuickConnectConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      quickConnectId: (() { final guardedValue = map['quickConnectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
