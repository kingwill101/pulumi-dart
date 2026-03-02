// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_sync_record_response.dart';

/// A class represent the certification record synchronized from app compliance.
class CertSyncRecordResponse {
  /// Indicates the status of certification process.
  final pulumi.Input<String>? certificationStatus;
  /// The control records list to be synchronized.
  final pulumi.Input<List<ControlSyncRecordResponse>>? controls;
  /// Indicates the status of compliance process.
  final pulumi.Input<String>? ingestionStatus;
  /// The offerGuid which mapping to the reports.
  final pulumi.Input<String>? offerGuid;

  /// Creates a new [CertSyncRecordResponse].
  /// [certificationStatus] Indicates the status of certification process.
  /// [controls] The control records list to be synchronized.
  /// [ingestionStatus] Indicates the status of compliance process.
  /// [offerGuid] The offerGuid which mapping to the reports.
  CertSyncRecordResponse({
    this.certificationStatus,
    this.controls,
    this.ingestionStatus,
    this.offerGuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificationStatus': ?certificationStatus,
      'controls': ?pulumi.Input.mapOptionalInputValue<List<ControlSyncRecordResponse>, List<Map<String, dynamic>>>(controls, (value) => pulumi.Input.encodeList<ControlSyncRecordResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingestionStatus': ?ingestionStatus,
      'offerGuid': ?offerGuid,
    };
  }

  factory CertSyncRecordResponse.fromMap(Map<String, dynamic> map) {
    return CertSyncRecordResponse(
      certificationStatus: map['certificationStatus'] == null ? null : (map['certificationStatus']! as String).input(),
      controls: map['controls'] == null ? null : (pulumi.Input.decodeList<ControlSyncRecordResponse>(map['controls']!, (value) => ControlSyncRecordResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingestionStatus: map['ingestionStatus'] == null ? null : (map['ingestionStatus']! as String).input(),
      offerGuid: map['offerGuid'] == null ? null : (map['offerGuid']! as String).input(),
    );
  }
}

