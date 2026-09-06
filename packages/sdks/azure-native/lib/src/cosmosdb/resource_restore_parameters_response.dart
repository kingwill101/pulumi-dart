// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters to indicate the information about the restore.
class ResourceRestoreParametersResponse {
  /// The id of the restorable database account from which the restore has to be initiated. For example: /subscriptions/{subscriptionId}/providers/Microsoft.DocumentDB/locations/{location}/restorableDatabaseAccounts/{restorableDatabaseAccountName}
  final pulumi.Input<String?>? restoreSource;
  /// Time to which the account has to be restored (ISO-8601 format).
  final pulumi.Input<String?>? restoreTimestampInUtc;
  /// Specifies whether the restored account will have Time-To-Live disabled upon the successful restore.
  final pulumi.Input<bool?>? restoreWithTtlDisabled;

  /// Creates a new [ResourceRestoreParametersResponse].
  /// [restoreSource] The id of the restorable database account from which the restore has to be initiated. For example: /subscriptions/{subscriptionId}/providers/Microsoft.DocumentDB/locations/{location}/restorableDatabaseAccounts/{restorableDatabaseAccountName}
  /// [restoreTimestampInUtc] Time to which the account has to be restored (ISO-8601 format).
  /// [restoreWithTtlDisabled] Specifies whether the restored account will have Time-To-Live disabled upon the successful restore.
  const ResourceRestoreParametersResponse({
    this.restoreSource,
    this.restoreTimestampInUtc,
    this.restoreWithTtlDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restoreSource': ?restoreSource,
      'restoreTimestampInUtc': ?restoreTimestampInUtc,
      'restoreWithTtlDisabled': ?restoreWithTtlDisabled,
    };
  }

  factory ResourceRestoreParametersResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRestoreParametersResponse(
      restoreSource: (() { final guardedValue = map['restoreSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreTimestampInUtc: (() { final guardedValue = map['restoreTimestampInUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreWithTtlDisabled: (() { final guardedValue = map['restoreWithTtlDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
