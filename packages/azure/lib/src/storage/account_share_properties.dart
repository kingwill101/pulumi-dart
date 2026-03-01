// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_share_properties_cors_rule.dart';
import 'account_share_properties_retention_policy.dart';
import 'account_share_properties_smb.dart';

class AccountShareProperties {
  /// A `cors_rule` block as defined below.
  final List<AccountSharePropertiesCorsRule>? corsRules;
  /// A `retention_policy` block as defined below.
  final AccountSharePropertiesRetentionPolicy? retentionPolicy;
  /// A `smb` block as defined below.
  final AccountSharePropertiesSmb? smb;

  /// Creates a new [AccountShareProperties].
  /// [corsRules] A `cors_rule` block as defined below.
  /// [retentionPolicy] A `retention_policy` block as defined below.
  /// [smb] A `smb` block as defined below.
  AccountShareProperties({
    this.corsRules,
    this.retentionPolicy,
    this.smb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsRules': ?corsRules == null ? null : pulumi.Input.encodeList<AccountSharePropertiesCorsRule, Map<String, dynamic>>(corsRules!, (value) => value.toMap()),
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
      'smb': ?smb == null ? null : smb!.toMap(),
    };
  }

  factory AccountShareProperties.fromMap(Map<String, dynamic> map) {
    return AccountShareProperties(
      corsRules: map['corsRules'] == null ? null : pulumi.Input.decodeList<AccountSharePropertiesCorsRule>(map['corsRules'], (value) => AccountSharePropertiesCorsRule.fromMap((value as Map).cast<String, dynamic>())),
      retentionPolicy: map['retentionPolicy'] == null ? null : AccountSharePropertiesRetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      smb: map['smb'] == null ? null : AccountSharePropertiesSmb.fromMap((map['smb'] as Map).cast<String, dynamic>()),
    );
  }
}

