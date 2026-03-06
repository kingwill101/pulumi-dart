// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'samlidp.dart';

/// Definition of SAMLOptionsOutput
class SAMLOptionsOutput {
  /// &lt;p&gt;True if SAML is enabled.&lt;/p&gt;
  final pulumi.Input<bool>? enabled;
  /// &lt;p&gt;Describes the SAML identity provider's information.&lt;/p&gt;
  final pulumi.Input<SAMLIdp>? idp;
  /// &lt;p&gt;The key used for matching the SAML roles attribute.&lt;/p&gt;
  final pulumi.Input<String>? rolesKey;
  /// &lt;p&gt;The duration, in minutes, after which a user session becomes inactive.&lt;/p&gt;
  final pulumi.Input<int>? sessionTimeoutMinutes;
  /// &lt;p&gt;The key used for matching the SAML subject attribute.&lt;/p&gt;
  final pulumi.Input<String>? subjectKey;

  /// Creates a new [SAMLOptionsOutput].
  /// [enabled] &lt;p&gt;True if SAML is enabled.&lt;/p&gt;
  /// [idp] &lt;p&gt;Describes the SAML identity provider's information.&lt;/p&gt;
  /// [rolesKey] &lt;p&gt;The key used for matching the SAML roles attribute.&lt;/p&gt;
  /// [sessionTimeoutMinutes] &lt;p&gt;The duration, in minutes, after which a user session becomes inactive.&lt;/p&gt;
  /// [subjectKey] &lt;p&gt;The key used for matching the SAML subject attribute.&lt;/p&gt;
  const SAMLOptionsOutput({
    this.enabled,
    this.idp,
    this.rolesKey,
    this.sessionTimeoutMinutes,
    this.subjectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'idp': ?pulumi.Input.mapOptionalInputValue<SAMLIdp, Map<String, dynamic>>(idp, (value) => value.toMap()),
      'rolesKey': ?rolesKey,
      'sessionTimeoutMinutes': ?sessionTimeoutMinutes,
      'subjectKey': ?subjectKey,
    };
  }

  factory SAMLOptionsOutput.fromMap(Map<String, dynamic> map) {
    return SAMLOptionsOutput(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idp: (() { final guardedValue = map['idp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SAMLIdp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rolesKey: (() { final guardedValue = map['rolesKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionTimeoutMinutes: (() { final guardedValue = map['sessionTimeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subjectKey: (() { final guardedValue = map['subjectKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

