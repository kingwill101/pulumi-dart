// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chronicle_data_access_label_data_access_label_args_doc}
/// The set of arguments for DataAccessLabel.
/// {@endtemplate}
/// {@macro pulumi_chronicle_data_access_label_data_access_label_args_doc}
class DataAccessLabelArgs {
  /// Required. The ID to use for the data access label, which will become the label's
  /// display name and the final component of the label's resource name. The
  /// maximum number of characters should be 63. Regex pattern is as per AIP:
  /// https://google.aip.dev/122#resource-id-segments
  final pulumi.Input<String> dataAccessLabelId;

  /// Optional. A description of the data access label for a human reader.
  final pulumi.Input<String>? description;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A UDM query over event data.
  final pulumi.Input<String> udmQuery;

  /// Creates a new [DataAccessLabelArgs].
  /// [dataAccessLabelId] Required. The ID to use for the data access label, which will become the label's
  /// [description] Optional. A description of the data access label for a human reader.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [project] The ID of the project in which the resource belongs.
  /// [udmQuery] A UDM query over event data.
  DataAccessLabelArgs({
    required String dataAccessLabelId,
    String? description,
    required String instance,
    required String location,
    String? project,
    required String udmQuery,
  }) : dataAccessLabelId = pulumi.Input.asInput<String>(dataAccessLabelId),
       description = pulumi.Input.asOptionalInput<String>(description),
       instance = pulumi.Input.asInput<String>(instance),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       udmQuery = pulumi.Input.asInput<String>(udmQuery);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAccessLabelId': dataAccessLabelId,
      'description': ?description,
      'instance': instance,
      'location': location,
      'project': ?project,
      'udmQuery': udmQuery,
    };
  }

  factory DataAccessLabelArgs.fromMap(Map<String, dynamic> map) {
    return DataAccessLabelArgs(
      dataAccessLabelId: map['dataAccessLabelId'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      instance: map['instance'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      udmQuery: map['udmQuery'] as String,
    );
  }
}
