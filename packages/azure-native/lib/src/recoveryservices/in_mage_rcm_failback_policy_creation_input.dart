// ignore_for_file: unused_element, unnecessary_cast


/// InMageRcmFailback policy creation input.
class InMageRcmFailbackPolicyCreationInput {
  /// The app consistent snapshot frequency (in minutes).
  final int? appConsistentFrequencyInMinutes;
  /// The crash consistent snapshot frequency (in minutes).
  final int? crashConsistentFrequencyInMinutes;
  /// The class type.
  /// Expected value is 'InMageRcmFailback'.
  final String instanceType;

  /// Creates a new [InMageRcmFailbackPolicyCreationInput].
  /// [appConsistentFrequencyInMinutes] The app consistent snapshot frequency (in minutes).
  /// [crashConsistentFrequencyInMinutes] The crash consistent snapshot frequency (in minutes).
  /// [instanceType] The class type.
  InMageRcmFailbackPolicyCreationInput({
    this.appConsistentFrequencyInMinutes,
    this.crashConsistentFrequencyInMinutes,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConsistentFrequencyInMinutes': ?appConsistentFrequencyInMinutes,
      'crashConsistentFrequencyInMinutes': ?crashConsistentFrequencyInMinutes,
      'instanceType': instanceType,
    };
  }

  factory InMageRcmFailbackPolicyCreationInput.fromMap(Map<String, dynamic> map) {
    return InMageRcmFailbackPolicyCreationInput(
      appConsistentFrequencyInMinutes: map['appConsistentFrequencyInMinutes'] == null ? null : map['appConsistentFrequencyInMinutes'] as int,
      crashConsistentFrequencyInMinutes: map['crashConsistentFrequencyInMinutes'] == null ? null : map['crashConsistentFrequencyInMinutes'] as int,
      instanceType: map['instanceType'] as String,
    );
  }
}

