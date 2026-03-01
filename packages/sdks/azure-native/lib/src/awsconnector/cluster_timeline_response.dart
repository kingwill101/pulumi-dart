// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ClusterTimeline
class ClusterTimelineResponse {
  /// <p>The creation date and time of the cluster.</p>
  final String? creationDateTime;
  /// <p>The date and time when the cluster was terminated.</p>
  final String? endDateTime;
  /// <p>The date and time when the cluster was ready to run steps.</p>
  final String? readyDateTime;

  /// Creates a new [ClusterTimelineResponse].
  /// [creationDateTime] <p>The creation date and time of the cluster.</p>
  /// [endDateTime] <p>The date and time when the cluster was terminated.</p>
  /// [readyDateTime] <p>The date and time when the cluster was ready to run steps.</p>
  ClusterTimelineResponse({
    this.creationDateTime,
    this.endDateTime,
    this.readyDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationDateTime': ?creationDateTime,
      'endDateTime': ?endDateTime,
      'readyDateTime': ?readyDateTime,
    };
  }

  factory ClusterTimelineResponse.fromMap(Map<String, dynamic> map) {
    return ClusterTimelineResponse(
      creationDateTime: map['creationDateTime'] == null ? null : map['creationDateTime'] as String,
      endDateTime: map['endDateTime'] == null ? null : map['endDateTime'] as String,
      readyDateTime: map['readyDateTime'] == null ? null : map['readyDateTime'] as String,
    );
  }
}

