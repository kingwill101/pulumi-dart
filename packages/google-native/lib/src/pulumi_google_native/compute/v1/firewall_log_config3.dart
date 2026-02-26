// ignore_for_file: unused_element, unnecessary_cast

import 'firewall_log_config_metadata3.dart';

/// The available logging options for a firewall rule.
class FirewallLogConfig3 {
  /// This field denotes whether to enable logging for a particular firewall rule.
  final bool? enable;

  /// This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
  final FirewallLogConfigMetadata3? metadata;

  FirewallLogConfig3({
    this.enable,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] = enableValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue.value;
    }
    return map;
  }

  factory FirewallLogConfig3.fromMap(Map<String, dynamic> map) {
    return FirewallLogConfig3(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      metadata: map['metadata'] == null
          ? null
          : FirewallLogConfigMetadata3.fromValue(map['metadata'] as String),
    );
  }
}
