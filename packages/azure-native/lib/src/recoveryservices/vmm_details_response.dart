// ignore_for_file: unused_element, unnecessary_cast


/// VMM fabric specific details.
class VmmDetailsResponse {
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'VMM'.
  final String instanceType;

  /// Creates a new [VmmDetailsResponse].
  /// [instanceType] Gets the class type. Overridden in derived classes.
  VmmDetailsResponse({
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
    };
  }

  factory VmmDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VmmDetailsResponse(
      instanceType: map['instanceType'] as String,
    );
  }
}

