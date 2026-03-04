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
    this.description,
    this.ecFailoverTestJobName,
    this.jobDuration,
    this.jobType,
    this.resourceIds,
    this.resourceType,
    this.status,
  });

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ecFailoverTestJobName: (() {
        final guardedValue = map['ecFailoverTestJobName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jobDuration: (() {
        final guardedValue = map['jobDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      jobType: (() {
        final guardedValue = map['jobType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceIds: (() {
        final guardedValue = map['resourceIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
