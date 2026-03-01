// ignore_for_file: unused_element, unnecessary_cast


/// A resource selected from ARM
class SelectedResource {
  /// Id of the connection
  final String id;
  /// Location of the connection
  final String? location;
  /// Name of the connection
  final String? name;
  /// Name of the subscription with the connection
  final String? subscriptionName;

  /// Creates a new [SelectedResource].
  /// [id] Id of the connection
  /// [location] Location of the connection
  /// [name] Name of the connection
  /// [subscriptionName] Name of the subscription with the connection
  SelectedResource({
    required this.id,
    this.location,
    this.name,
    this.subscriptionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': ?location,
      'name': ?name,
      'subscriptionName': ?subscriptionName,
    };
  }

  factory SelectedResource.fromMap(Map<String, dynamic> map) {
    return SelectedResource(
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      subscriptionName: map['subscriptionName'] == null ? null : map['subscriptionName'] as String,
    );
  }
}

