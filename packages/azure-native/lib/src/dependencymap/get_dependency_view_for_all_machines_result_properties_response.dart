// ignore_for_file: unused_element, unnecessary_cast


/// Model representing properties returned upon successful completion of the export dependencies asynchronous operation.
class GetDependencyViewForAllMachinesResultPropertiesResponse {
  /// The SAS URI of the blob containing the layout file for the multi-server view.
  final String layoutFileSasUrl;

  /// Creates a new [GetDependencyViewForAllMachinesResultPropertiesResponse].
  /// [layoutFileSasUrl] The SAS URI of the blob containing the layout file for the multi-server view.
  GetDependencyViewForAllMachinesResultPropertiesResponse({
    required this.layoutFileSasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'layoutFileSasUrl': layoutFileSasUrl,
    };
  }

  factory GetDependencyViewForAllMachinesResultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GetDependencyViewForAllMachinesResultPropertiesResponse(
      layoutFileSasUrl: map['layoutFileSasUrl'] as String,
    );
  }
}

