// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrivateSrvNetworkAddress resources.
class PrivateSrvNetworkAddressState {
  /// The instance ID.
  final pulumi.Input<String>? dbInstanceId;
  /// Private network SRV highly available connection address
  final pulumi.Input<String>? privateSrvConnectionStringUri;

  /// Creates a new [PrivateSrvNetworkAddressState].
  /// [dbInstanceId] The instance ID.
  /// [privateSrvConnectionStringUri] Private network SRV highly available connection address
  PrivateSrvNetworkAddressState({
    this.dbInstanceId,
    this.privateSrvConnectionStringUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': ?dbInstanceId,
      'privateSrvConnectionStringUri': ?privateSrvConnectionStringUri,
    };
  }

  factory PrivateSrvNetworkAddressState.fromMap(Map<String, dynamic> map) {
    return PrivateSrvNetworkAddressState(
      dbInstanceId: (() { final guardedValue = map['dbInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateSrvConnectionStringUri: (() { final guardedValue = map['privateSrvConnectionStringUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

