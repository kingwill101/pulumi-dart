// ignore_for_file: unused_element, unnecessary_cast


class AnycastEipAddressAttachmentPopLocation {
  /// The access point information of the associated access area when the cloud resource instance is bound.If you are binding for the first time, this parameter does not need to be configured, and the system automatically associates all access areas.
  final String? popLocation;

  /// Creates a new [AnycastEipAddressAttachmentPopLocation].
  /// [popLocation] The access point information of the associated access area when the cloud resource instance is bound.If you are binding for the first time, this parameter does not need to be configured, and the system automatically associates all access areas.
  AnycastEipAddressAttachmentPopLocation({
    this.popLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'popLocation': ?popLocation,
    };
  }

  factory AnycastEipAddressAttachmentPopLocation.fromMap(Map<String, dynamic> map) {
    return AnycastEipAddressAttachmentPopLocation(
      popLocation: map['popLocation'] == null ? null : map['popLocation'] as String,
    );
  }
}

