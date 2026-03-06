// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  /// The time when the metering method for the next cycle takes effect. The time is displayed in GMT.
  final String changingAffectTime;
  /// The metering method for the next cycle.
  final String changingChargeType;
  final String? enable;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? internetChargeType;
  /// The time when the CDN service was activated. The time follows the ISO 8601 standard in the yyyy-MM-ddThh:mmZ format.
  final String openingTime;
  /// The current service enable status.
  final String status;

  /// Creates a new [GetServiceResult].
  /// [changingAffectTime] The time when the metering method for the next cycle takes effect. The time is displayed in GMT.
  /// [changingChargeType] The metering method for the next cycle.
  /// [enable] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internetChargeType] Optional.
  /// [openingTime] The time when the CDN service was activated. The time follows the ISO 8601 standard in the yyyy-MM-ddThh:mmZ format.
  /// [status] The current service enable status.
  const GetServiceResult({
    required this.changingAffectTime,
    required this.changingChargeType,
    this.enable,
    required this.id,
    this.internetChargeType,
    required this.openingTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changingAffectTime': changingAffectTime,
      'changingChargeType': changingChargeType,
      'enable': ?enable,
      'id': id,
      'internetChargeType': ?internetChargeType,
      'openingTime': openingTime,
      'status': status,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      changingAffectTime: map['changingAffectTime'] as String,
      changingChargeType: map['changingChargeType'] as String,
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      internetChargeType: (() { final guardedValue = map['internetChargeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      openingTime: map['openingTime'] as String,
      status: map['status'] as String,
    );
  }
}

