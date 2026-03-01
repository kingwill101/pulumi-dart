// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_source_data_source_gcp_resource_compute_instance_data_source_property.dart';

class GetDataSourceDataSourceGcpResource {
  /// ComputeInstanceDataSourceProperties has a subset of Compute Instance properties that are useful at the Datasource level.
  final List<
    GetDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty
  >
  computeInstanceDataSourceProperties;

  /// Full resource pathname URL of the source Google Cloud resource.
  final String gcpResourcename;

  /// The location in which the Data Source belongs.
  final String location;

  /// The type of the Google Cloud resource. Use the Unified Resource Type,
  /// eg. compute.googleapis.com/Instance.
  final String type;

  /// Creates a new [GetDataSourceDataSourceGcpResource].
  /// [computeInstanceDataSourceProperties] ComputeInstanceDataSourceProperties has a subset of Compute Instance properties that are useful at the Datasource level.
  /// [gcpResourcename] Full resource pathname URL of the source Google Cloud resource.
  /// [location] The location in which the Data Source belongs.
  /// [type] The type of the Google Cloud resource. Use the Unified Resource Type,
  GetDataSourceDataSourceGcpResource({
    required this.computeInstanceDataSourceProperties,
    required this.gcpResourcename,
    required this.location,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeInstanceDataSourceProperties':
          pulumi.Input.encodeList<
            GetDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty,
            Map<String, dynamic>
          >(computeInstanceDataSourceProperties, (value) => value.toMap()),
      'gcpResourcename': gcpResourcename,
      'location': location,
      'type': type,
    };
  }

  factory GetDataSourceDataSourceGcpResource.fromMap(Map<String, dynamic> map) {
    return GetDataSourceDataSourceGcpResource(
      computeInstanceDataSourceProperties:
          pulumi.Input.decodeList<
            GetDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty
          >(
            map['computeInstanceDataSourceProperties'],
            (value) =>
                GetDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      gcpResourcename: map['gcpResourcename'] as String,
      location: map['location'] as String,
      type: map['type'] as String,
    );
  }
}
