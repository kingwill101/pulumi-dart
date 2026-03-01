// ignore_for_file: unused_element, unnecessary_cast


/// The type of placement policy for a service fabric service. Following are the possible values.
class ServicePlacementNonPartiallyPlaceServicePolicy {
  /// The type of placement policy for a service fabric service. Following are the possible values.
  /// Expected value is 'NonPartiallyPlaceService'.
  final String type;

  /// Creates a new [ServicePlacementNonPartiallyPlaceServicePolicy].
  /// [type] The type of placement policy for a service fabric service. Following are the possible values.
  ServicePlacementNonPartiallyPlaceServicePolicy({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ServicePlacementNonPartiallyPlaceServicePolicy.fromMap(Map<String, dynamic> map) {
    return ServicePlacementNonPartiallyPlaceServicePolicy(
      type: map['type'] as String,
    );
  }
}

