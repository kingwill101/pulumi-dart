// ignore_for_file: unused_element, unnecessary_cast

/// Defines a particular step within a Cloud Dataflow job. A job consists of multiple steps, each of which performs some specific operation as part of the overall job. Data is typically passed from one step to another as part of the job. **Note:** The properties of this object are not stable and might change. Here's an example of a sequence of steps which together implement a Map-Reduce job: * Read a collection of data from some source, parsing the collection's elements. * Validate the elements. * Apply a user-defined function to map each element to some value and extract an element-specific key value. * Group elements with the same key into a single element with that key, transforming a multiply-keyed collection into a uniquely-keyed collection. * Write the elements out to some data sink. Note that the Cloud Dataflow service may be used to run many different types of jobs, not just Map-Reduce.
class StepResponse {
  /// The kind of step in the Cloud Dataflow job.
  final String kind;

  /// The name that identifies the step. This must be unique for each step with respect to all other steps in the Cloud Dataflow job.
  final String name;

  /// Named properties associated with the step. Each kind of predefined step has its own required set of properties. Must be provided on Create. Only retrieved with JOB_VIEW_ALL.
  final Map<String, String> properties;

  StepResponse({
    required this.kind,
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['name'] = name;
    map['properties'] = properties;
    return map;
  }

  factory StepResponse.fromMap(Map<String, dynamic> map) {
    return StepResponse(
      kind: map['kind'] as String,
      name: map['name'] as String,
      properties: (map['properties'] as Map).cast<String, String>(),
    );
  }
}
