// ignore_for_file: unused_element, unnecessary_cast


/// Job resource request payload
class JobResourceRequestsResponse {
  /// CPU allocated to each job execution instance.
  final String? cpu;
  /// Memory allocated to each job execution instance.
  final String? memory;

  /// Creates a new [JobResourceRequestsResponse].
  /// [cpu] CPU allocated to each job execution instance.
  /// [memory] Memory allocated to each job execution instance.
  JobResourceRequestsResponse({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory JobResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return JobResourceRequestsResponse(
      cpu: map['cpu'] == null ? null : map['cpu'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

