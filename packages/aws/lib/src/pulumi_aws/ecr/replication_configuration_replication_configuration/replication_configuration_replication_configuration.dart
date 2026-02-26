// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../replication_configuration_replication_configuration_rule/replication_configuration_replication_configuration_rule.dart';

class ReplicationConfigurationReplicationConfiguration {
  /// The replication rules for a replication configuration. A maximum of 10 are allowed per <span pulumi-lang-nodejs="`replicationConfiguration`" pulumi-lang-dotnet="`ReplicationConfiguration`" pulumi-lang-go="`replicationConfiguration`" pulumi-lang-python="`replication_configuration`" pulumi-lang-yaml="`replicationConfiguration`" pulumi-lang-java="`replicationConfiguration`">`replication_configuration`</span>. See Rule
  final List<ReplicationConfigurationReplicationConfigurationRule> rules;

  ReplicationConfigurationReplicationConfiguration({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rules'] = Input.encodeList<
        ReplicationConfigurationReplicationConfigurationRule,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    return map;
  }

  factory ReplicationConfigurationReplicationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ReplicationConfigurationReplicationConfiguration(
      rules: Input.decodeList<
              ReplicationConfigurationReplicationConfigurationRule>(
          map['rules'],
          (value) =>
              ReplicationConfigurationReplicationConfigurationRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
