// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../regional_secret_customer_managed_encryption/regional_secret_customer_managed_encryption.dart';
import '../regional_secret_rotation/regional_secret_rotation.dart';
import '../regional_secret_topic/regional_secret_topic.dart';

/// The set of arguments for RegionalSecret.
class RegionalSecretArgs {
  /// Custom metadata about the regional secret.
  /// Annotations are distinct from various forms of labels. Annotations exist to allow
  /// client tools to store their own state information without requiring a database.
  /// Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of
  /// maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and
  /// may have dashes (-), underscores (_), dots (.), and alphanumerics in between these
  /// symbols.
  /// The total size of annotation keys and values must be less than 16KiB.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// The customer-managed encryption configuration of the regional secret.
  /// Structure is documented below.
  final Input<RegionalSecretCustomerManagedEncryption>?
      customerManagedEncryption;
  final Input<bool>? deletionProtection;

  /// Timestamp in UTC when the regional secret is scheduled to expire. This is always provided on
  /// output, regardless of what was sent on input. A timestamp in RFC3339 UTC "Zulu" format, with
  /// nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z". Only one of <span pulumi-lang-nodejs="`expireTime`" pulumi-lang-dotnet="`ExpireTime`" pulumi-lang-go="`expireTime`" pulumi-lang-python="`expire_time`" pulumi-lang-yaml="`expireTime`" pulumi-lang-java="`expireTime`">`expire_time`</span> or <span pulumi-lang-nodejs="`ttl`" pulumi-lang-dotnet="`Ttl`" pulumi-lang-go="`ttl`" pulumi-lang-python="`ttl`" pulumi-lang-yaml="`ttl`" pulumi-lang-java="`ttl`">`ttl`</span> can be provided.
  final Input<String>? expireTime;

  /// The labels assigned to this regional secret.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be assigned to a given resource.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of the regional secret. eg us-central1
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The rotation time and period for a regional secret. At <span pulumi-lang-nodejs="`nextRotationTime`" pulumi-lang-dotnet="`NextRotationTime`" pulumi-lang-go="`nextRotationTime`" pulumi-lang-python="`next_rotation_time`" pulumi-lang-yaml="`nextRotationTime`" pulumi-lang-java="`nextRotationTime`">`next_rotation_time`</span>, Secret Manager
  /// will send a Pub/Sub notification to the topics configured on the Secret. <span pulumi-lang-nodejs="`topics`" pulumi-lang-dotnet="`Topics`" pulumi-lang-go="`topics`" pulumi-lang-python="`topics`" pulumi-lang-yaml="`topics`" pulumi-lang-java="`topics`">`topics`</span> must be
  /// set to configure rotation.
  /// Structure is documented below.
  final Input<RegionalSecretRotation>? rotation;

  /// This must be unique within the project.
  final Input<String> secretId;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  final Input<Map<String, String>>? tags;

  /// A list of up to 10 Pub/Sub topics to which messages are published when control plane
  /// operations are called on the regional secret or its versions.
  /// Structure is documented below.
  final Input<List<RegionalSecretTopic>>? topics;

  /// The TTL for the regional secret. A duration in seconds with up to nine fractional digits,
  /// terminated by 's'. Example: "3.5s". Only one of <span pulumi-lang-nodejs="`ttl`" pulumi-lang-dotnet="`Ttl`" pulumi-lang-go="`ttl`" pulumi-lang-python="`ttl`" pulumi-lang-yaml="`ttl`" pulumi-lang-java="`ttl`">`ttl`</span> or <span pulumi-lang-nodejs="`expireTime`" pulumi-lang-dotnet="`ExpireTime`" pulumi-lang-go="`expireTime`" pulumi-lang-python="`expire_time`" pulumi-lang-yaml="`expireTime`" pulumi-lang-java="`expireTime`">`expire_time`</span> can be provided.
  final Input<String>? ttl;

  /// Mapping from version alias to version name.
  /// A version alias is a string with a maximum length of 63 characters and can contain
  /// uppercase and lowercase letters, numerals, and the hyphen (-) and underscore ('_')
  /// characters. An alias string must start with a letter and cannot be the string
  /// 'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Input<Map<String, String>>? versionAliases;

  /// Secret Version TTL after destruction request.
  /// This is a part of the delayed delete feature on Secret Version.
  /// For secret with versionDestroyTtl>0, version destruction doesn't happen immediately
  /// on calling destroy instead the version goes to a disabled state and
  /// the actual destruction happens after this TTL expires. It must be atleast 24h.
  final Input<String>? versionDestroyTtl;

  RegionalSecretArgs({
    this.annotations,
    this.customerManagedEncryption,
    this.deletionProtection,
    this.expireTime,
    this.labels,
    required this.location,
    this.project,
    this.rotation,
    required this.secretId,
    this.tags,
    this.topics,
    this.ttl,
    this.versionAliases,
    this.versionDestroyTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final customerManagedEncryptionValue = customerManagedEncryption;
    if (customerManagedEncryptionValue != null) {
      map['customerManagedEncryption'] = Input.mapOptionalInputValue<
              RegionalSecretCustomerManagedEncryption, Map<String, dynamic>>(
          customerManagedEncryptionValue, (value) => value.toMap());
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final expireTimeValue = expireTime;
    if (expireTimeValue != null) {
      map['expireTime'] = expireTimeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rotationValue = rotation;
    if (rotationValue != null) {
      map['rotation'] = Input.mapOptionalInputValue<RegionalSecretRotation,
          Map<String, dynamic>>(rotationValue, (value) => value.toMap());
    }
    map['secretId'] = secretId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final topicsValue = topics;
    if (topicsValue != null) {
      map['topics'] = Input.mapOptionalInputValue<List<RegionalSecretTopic>,
              List<Map<String, dynamic>>>(
          topicsValue,
          (value) =>
              Input.encodeList<RegionalSecretTopic, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    final versionAliasesValue = versionAliases;
    if (versionAliasesValue != null) {
      map['versionAliases'] = versionAliasesValue;
    }
    final versionDestroyTtlValue = versionDestroyTtl;
    if (versionDestroyTtlValue != null) {
      map['versionDestroyTtl'] = versionDestroyTtlValue;
    }
    return map;
  }

  factory RegionalSecretArgs.fromMap(Map<String, dynamic> map) {
    return RegionalSecretArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      customerManagedEncryption:
          Input.asOptionalInput<RegionalSecretCustomerManagedEncryption>(
              map['customerManagedEncryption']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      expireTime: Input.asOptionalInput<String>(map['expireTime']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      rotation: Input.asOptionalInput<RegionalSecretRotation>(map['rotation']),
      secretId: Input.asInput<String>(map['secretId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      topics: Input.asOptionalInput<List<RegionalSecretTopic>>(map['topics']),
      ttl: Input.asOptionalInput<String>(map['ttl']),
      versionAliases:
          Input.asOptionalInput<Map<String, String>>(map['versionAliases']),
      versionDestroyTtl:
          Input.asOptionalInput<String>(map['versionDestroyTtl']),
    );
  }
}
