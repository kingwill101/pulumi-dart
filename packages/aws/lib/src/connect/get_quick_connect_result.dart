// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quick_connect_quick_connect_config.dart';

/// Result data returned by getQuickConnect.
class GetQuickConnectResult {
  /// ARN of the Quick Connect.
  final String arn;

  /// Description of the Quick Connect.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String name;

  /// A block that defines the configuration information for the Quick Connect: `quick_connect_type` and one of `phone_config`, `queue_config`, `user_config` . The Quick Connect Config block is documented below.
  final List<GetQuickConnectQuickConnectConfig> quickConnectConfigs;

  /// Identifier for the Quick Connect.
  final String quickConnectId;
  final String region;

  /// Map of tags to assign to the Quick Connect.
  final Map<String, String> tags;

  /// Creates a new [GetQuickConnectResult].
  /// [arn] ARN of the Quick Connect.
  /// [description] Description of the Quick Connect.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [name] Required.
  /// [quickConnectConfigs] A block that defines the configuration information for the Quick Connect: `quick_connect_type` and one of `phone_config`, `queue_config`, `user_config` . The Quick Connect Config block is documented below.
  /// [quickConnectId] Identifier for the Quick Connect.
  /// [region] Required.
  /// [tags] Map of tags to assign to the Quick Connect.
  GetQuickConnectResult({
    required this.arn,
    required this.description,
    required this.id,
    required this.instanceId,
    required this.name,
    required this.quickConnectConfigs,
    required this.quickConnectId,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'id': id,
      'instanceId': instanceId,
      'name': name,
      'quickConnectConfigs':
          pulumi.Input.encodeList<
            GetQuickConnectQuickConnectConfig,
            Map<String, dynamic>
          >(quickConnectConfigs, (value) => value.toMap()),
      'quickConnectId': quickConnectId,
      'region': region,
      'tags': tags,
    };
  }

  factory GetQuickConnectResult.fromMap(Map<String, dynamic> map) {
    return GetQuickConnectResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      name: map['name'] as String,
      quickConnectConfigs:
          pulumi.Input.decodeList<GetQuickConnectQuickConnectConfig>(
            map['quickConnectConfigs'],
            (value) => GetQuickConnectQuickConnectConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      quickConnectId: map['quickConnectId'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
