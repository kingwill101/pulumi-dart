// ignore_for_file: unused_element, unnecessary_cast

/// The packages that must be installed in order for a worker to run the steps of the Cloud Dataflow job that will be assigned to its worker pool. This is the mechanism by which the Cloud Dataflow SDK causes code to be loaded onto the workers. For example, the Cloud Dataflow Java SDK might use this to install jars containing the user's code and all of the various dependencies (libraries, data files, etc.) required in order for that code to run.
class Package {
  /// The resource to read the package from. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket} bucket.storage.googleapis.com/
  final String? location;

  /// The name of the package.
  final String? name;

  /// Creates a new [Package].
  /// [location] The resource to read the package from. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket} bucket.storage.googleapis.com/
  /// [name] The name of the package.
  Package({this.location, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'location': ?location, 'name': ?name};
  }

  factory Package.fromMap(Map<String, dynamic> map) {
    return Package(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
