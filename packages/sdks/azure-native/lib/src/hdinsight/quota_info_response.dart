// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The quota properties for the cluster.
class QuotaInfoResponse {
  /// The cores used by the cluster.
  final pulumi.Input<int>? coresUsed;

  /// Creates a new [QuotaInfoResponse].
  /// [coresUsed] The cores used by the cluster.
  QuotaInfoResponse({this.coresUsed});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'coresUsed': ?coresUsed};
  }

  factory QuotaInfoResponse.fromMap(Map<String, dynamic> map) {
    return QuotaInfoResponse(
      coresUsed: (() {
        final guardedValue = map['coresUsed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
