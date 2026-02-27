// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Service.
class ServiceVpclatticeArgs {
  /// Type of IAM policy. Either `NONE` or `AWS_IAM`.
  final pulumi.Input<String>? authType;

  /// Amazon Resource Name (ARN) of the certificate.
  final pulumi.Input<String>? certificateArn;

  /// Custom domain name of the service.
  final pulumi.Input<String>? customDomainName;

  /// Name of the service. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.Must be between 3 and 40 characters in length.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ServiceVpclatticeArgs({
    this.authType,
    this.certificateArn,
    this.customDomainName,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authTypeValue = authType;
    if (authTypeValue != null) {
      map['authType'] = authTypeValue;
    }
    final certificateArnValue = certificateArn;
    if (certificateArnValue != null) {
      map['certificateArn'] = certificateArnValue;
    }
    final customDomainNameValue = customDomainName;
    if (customDomainNameValue != null) {
      map['customDomainName'] = customDomainNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ServiceVpclatticeArgs.fromMap(Map<String, dynamic> map) {
    return ServiceVpclatticeArgs(
      authType: pulumi.Input.asOptionalInput<String>(map['authType']),
      certificateArn:
          pulumi.Input.asOptionalInput<String>(map['certificateArn']),
      customDomainName:
          pulumi.Input.asOptionalInput<String>(map['customDomainName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
