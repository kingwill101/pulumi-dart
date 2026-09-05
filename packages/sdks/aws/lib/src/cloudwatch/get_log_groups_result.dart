// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLogGroups.
class GetLogGroupsResult {
  /// Set of ARNs of the Cloudwatch log groups
  final List<String>? arns;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? logGroupNamePrefix;
  /// Set of names of the Cloudwatch log groups
  final List<String>? logGroupNames;
  final String? region;

  /// Creates a new [GetLogGroupsResult].
  /// [arns] Set of ARNs of the Cloudwatch log groups
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logGroupNamePrefix] Optional.
  /// [logGroupNames] Set of names of the Cloudwatch log groups
  /// [region] Optional.
  const GetLogGroupsResult({
    this.arns,
    this.id,
    this.logGroupNamePrefix,
    this.logGroupNames,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'id': ?id,
      'logGroupNamePrefix': ?logGroupNamePrefix,
      'logGroupNames': ?logGroupNames,
      'region': ?region,
    };
  }

  factory GetLogGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetLogGroupsResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logGroupNamePrefix: (() { final guardedValue = map['logGroupNamePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logGroupNames: (() { final guardedValue = map['logGroupNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
