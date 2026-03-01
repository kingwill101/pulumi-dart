// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceCreditSpecification {
  final String cpuCredits;

  /// Creates a new [GetInstanceCreditSpecification].
  /// [cpuCredits] Required.
  GetInstanceCreditSpecification({required this.cpuCredits});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpuCredits': cpuCredits};
  }

  factory GetInstanceCreditSpecification.fromMap(Map<String, dynamic> map) {
    return GetInstanceCreditSpecification(
      cpuCredits: map['cpuCredits'] as String,
    );
  }
}
