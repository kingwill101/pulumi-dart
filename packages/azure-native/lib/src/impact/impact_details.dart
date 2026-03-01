// ignore_for_file: unused_element, unnecessary_cast


/// details of of the impact for which insight has been generated.
class ImpactDetails {
  /// Time at which impact was ended according to reported impact.
  final String? endTime;
  /// Azure Id of the impact.
  final String impactId;
  /// List of impacted Azure resources.
  final String impactedResourceId;
  /// Time at which impact was started according to reported impact.
  final String startTime;

  /// Creates a new [ImpactDetails].
  /// [endTime] Time at which impact was ended according to reported impact.
  /// [impactId] Azure Id of the impact.
  /// [impactedResourceId] List of impacted Azure resources.
  /// [startTime] Time at which impact was started according to reported impact.
  ImpactDetails({
    this.endTime,
    required this.impactId,
    required this.impactedResourceId,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'impactId': impactId,
      'impactedResourceId': impactedResourceId,
      'startTime': startTime,
    };
  }

  factory ImpactDetails.fromMap(Map<String, dynamic> map) {
    return ImpactDetails(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      impactId: map['impactId'] as String,
      impactedResourceId: map['impactedResourceId'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

