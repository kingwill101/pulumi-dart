// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcFailoverTestJob resources.
class EcFailoverTestJobState {
  /// Job description.
  final pulumi.Input<String>? description;
  /// Job name.
  final pulumi.Input<String>? ecFailoverTestJobName;
  /// Job duration.
  final pulumi.Input<int>? jobDuration;
  /// Job type.
  final pulumi.Input<String>? jobType;
  /// Resource id list.
  final pulumi.Input<List<String>>? resourceIds;
  /// Resource type.
  final pulumi.Input<String>? resourceType;
  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [EcFailoverTestJobState].
  /// [description] Job description.
  /// [ecFailoverTestJobName] Job name.
  /// [jobDuration] Job duration.
  /// [jobType] Job type.
  /// [resourceIds] Resource id list.
  /// [resourceType] Resource type.
  /// [status] The status of the resource.
  EcFailoverTestJobState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? ecFailoverTestJobName,
    pulumi.Output<int>? jobDuration,
    pulumi.Output<String>? jobType,
    pulumi.Output<List<String>>? resourceIds,
    pulumi.Output<String>? resourceType,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      ecFailoverTestJobName = pulumi.Input.asOptionalInput<String>(ecFailoverTestJobName),
      jobDuration = pulumi.Input.asOptionalInput<int>(jobDuration),
      jobType = pulumi.Input.asOptionalInput<String>(jobType),
      resourceIds = pulumi.Input.asOptionalInput<List<String>>(resourceIds),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ecFailoverTestJobName': ?ecFailoverTestJobName,
      'jobDuration': ?jobDuration,
      'jobType': ?jobType,
      'resourceIds': ?resourceIds,
      'resourceType': ?resourceType,
      'status': ?status,
    };
  }

  factory EcFailoverTestJobState.fromMap(Map<String, dynamic> map) {
    return EcFailoverTestJobState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ecFailoverTestJobName: map['ecFailoverTestJobName'] == null ? null : pulumi.Output.create<String>(map['ecFailoverTestJobName'] as String),
      jobDuration: map['jobDuration'] == null ? null : pulumi.Output.create<int>(map['jobDuration'] as int),
      jobType: map['jobType'] == null ? null : pulumi.Output.create<String>(map['jobType'] as String),
      resourceIds: map['resourceIds'] == null ? null : pulumi.Output.create<List<String>>((map['resourceIds'] as List).cast<String>()),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

