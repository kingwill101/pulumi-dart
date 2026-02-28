// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceCreditSpecification {
  final String cpuCredits;

  /// Creates a new [GetInstanceCreditSpecification].
  /// [cpuCredits] Required.
  GetInstanceCreditSpecification({
    required this.cpuCredits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCredits'] = cpuCredits;
    return map;
  }

  factory GetInstanceCreditSpecification.fromMap(Map<String, dynamic> map) {
    return GetInstanceCreditSpecification(
      cpuCredits: map['cpuCredits'] as String,
    );
  }
}
