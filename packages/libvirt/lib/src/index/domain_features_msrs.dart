// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesMsrs {
  /// Indicates whether unknown MSRs are allowed to be accessed by the guest.
  final String unknown;

  /// Creates a new [DomainFeaturesMsrs].
  /// [unknown] Indicates whether unknown MSRs are allowed to be accessed by the guest.
  DomainFeaturesMsrs({
    required this.unknown,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unknown': unknown,
    };
  }

  factory DomainFeaturesMsrs.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesMsrs(
      unknown: map['unknown'] as String,
    );
  }
}

