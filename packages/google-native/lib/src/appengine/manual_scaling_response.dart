// ignore_for_file: unused_element, unnecessary_cast


/// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
class ManualScalingResponse {
  /// Number of instances to assign to the service at the start. This number can later be altered by using the Modules API (https://cloud.google.com/appengine/docs/python/modules/functions) set_num_instances() function.
  final int instances;

  /// Creates a new [ManualScalingResponse].
  /// [instances] Number of instances to assign to the service at the start. This number can later be altered by using the Modules API (https://cloud.google.com/appengine/docs/python/modules/functions) set_num_instances() function.
  ManualScalingResponse({
    required this.instances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': instances,
    };
  }

  factory ManualScalingResponse.fromMap(Map<String, dynamic> map) {
    return ManualScalingResponse(
      instances: map['instances'] as int,
    );
  }
}

