// ignore_for_file: unused_element, unnecessary_cast


/// The user object receiver value.
class DistributionGroupListReceiverValue {
  /// The list of distribution groups.
  final List<String>? distributionGroups;

  /// Creates a new [DistributionGroupListReceiverValue].
  /// [distributionGroups] The list of distribution groups.
  DistributionGroupListReceiverValue({
    this.distributionGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionGroups': ?distributionGroups,
    };
  }

  factory DistributionGroupListReceiverValue.fromMap(Map<String, dynamic> map) {
    return DistributionGroupListReceiverValue(
      distributionGroups: map['distributionGroups'] == null ? null : (map['distributionGroups'] as List).cast<String>(),
    );
  }
}

