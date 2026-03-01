// ignore_for_file: unused_element, unnecessary_cast


/// ContainerResizePolicy represents resource resize policy for the container.
class ContainerResizePolicy {
  /// Name of the resource to which this resource resize policy applies. Supported values: cpu, memory.
  final String resourceName;
  /// Restart policy to apply when specified resource is resized. If not specified, it defaults to NotRequired.
  final String restartPolicy;

  /// Creates a new [ContainerResizePolicy].
  /// [resourceName] Name of the resource to which this resource resize policy applies. Supported values: cpu, memory.
  /// [restartPolicy] Restart policy to apply when specified resource is resized. If not specified, it defaults to NotRequired.
  ContainerResizePolicy({
    required this.resourceName,
    required this.restartPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': resourceName,
      'restartPolicy': restartPolicy,
    };
  }

  factory ContainerResizePolicy.fromMap(Map<String, dynamic> map) {
    return ContainerResizePolicy(
      resourceName: map['resourceName'] as String,
      restartPolicy: map['restartPolicy'] as String,
    );
  }
}

