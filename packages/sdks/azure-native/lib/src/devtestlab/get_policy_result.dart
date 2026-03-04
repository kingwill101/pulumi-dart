// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The creation date of the policy.
  final String createdDate;

  /// The description of the policy.
  final String? description;

  /// The evaluator type of the policy (i.e. AllowedValuesPolicy, MaxValuePolicy).
  final String? evaluatorType;

  /// The fact data of the policy.
  final String? factData;

  /// The fact name of the policy (e.g. LabVmCount, LabVmSize, MaxVmsAllowedPerLab, etc.
  final String? factName;

  /// The identifier of the resource.
  final String id;

  /// The location of the resource.
  final String? location;

  /// The name of the resource.
  final String name;

  /// The provisioning status of the resource.
  final String provisioningState;

  /// The status of the policy.
  final String? status;

  /// The tags of the resource.
  final Map<String, String>? tags;

  /// The threshold of the policy (i.e. a number for MaxValuePolicy, and a JSON array of values for AllowedValuesPolicy).
  final String? threshold;

  /// The type of the resource.
  final String type;

  /// The unique immutable identifier of a resource (Guid).
  final String uniqueIdentifier;

  /// Creates a new [GetPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] The creation date of the policy.
  /// [description] The description of the policy.
  /// [evaluatorType] The evaluator type of the policy (i.e. AllowedValuesPolicy, MaxValuePolicy).
  /// [factData] The fact data of the policy.
  /// [factName] The fact name of the policy (e.g. LabVmCount, LabVmSize, MaxVmsAllowedPerLab, etc.
  /// [id] The identifier of the resource.
  /// [location] The location of the resource.
  /// [name] The name of the resource.
  /// [provisioningState] The provisioning status of the resource.
  /// [status] The status of the policy.
  /// [tags] The tags of the resource.
  /// [threshold] The threshold of the policy (i.e. a number for MaxValuePolicy, and a JSON array of values for AllowedValuesPolicy).
  /// [type] The type of the resource.
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  GetPolicyResult({
    required this.azureApiVersion,
    required this.createdDate,
    this.description,
    this.evaluatorType,
    this.factData,
    this.factName,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    this.status,
    this.tags,
    this.threshold,
    required this.type,
    required this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdDate': createdDate,
      'description': ?description,
      'evaluatorType': ?evaluatorType,
      'factData': ?factData,
      'factName': ?factName,
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'status': ?status,
      'tags': ?tags,
      'threshold': ?threshold,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdDate: map['createdDate'] as String,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      evaluatorType: (() {
        final guardedValue = map['evaluatorType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      factData: (() {
        final guardedValue = map['factData'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      factName: (() {
        final guardedValue = map['factName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      threshold: (() {
        final guardedValue = map['threshold'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
    );
  }
}
