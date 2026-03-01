// ignore_for_file: unused_element, unnecessary_cast


/// The resource quantity for required CPU and Memory of Dev Tool Portal
class DevToolPortalResourceRequestsResponse {
  /// Cpu quantity allocated to each Dev Tool Portal instance. 1 core can be represented by 1 or 1000m
  final String cpu;
  /// Desired instance count of Dev Tool Portal.
  final int instanceCount;
  /// Memory quantity allocated to each Dev Tool Portal instance. 1 GB can be represented by 1Gi or 1024Mi.
  final String memory;

  /// Creates a new [DevToolPortalResourceRequestsResponse].
  /// [cpu] Cpu quantity allocated to each Dev Tool Portal instance. 1 core can be represented by 1 or 1000m
  /// [instanceCount] Desired instance count of Dev Tool Portal.
  /// [memory] Memory quantity allocated to each Dev Tool Portal instance. 1 GB can be represented by 1Gi or 1024Mi.
  DevToolPortalResourceRequestsResponse({
    required this.cpu,
    required this.instanceCount,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'instanceCount': instanceCount,
      'memory': memory,
    };
  }

  factory DevToolPortalResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return DevToolPortalResourceRequestsResponse(
      cpu: map['cpu'] as String,
      instanceCount: map['instanceCount'] as int,
      memory: map['memory'] as String,
    );
  }
}

