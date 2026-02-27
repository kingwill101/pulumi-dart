// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// The customer-managed encryption configuration of the regional secret.
  /// Structure is documented below.
  final pulumi.Input<RegionalSecretCustomerManagedEncryption>?
      customerManagedEncryption;
  final pulumi.Input<bool>? deletionProtection;

  /// Timestamp in UTC when the regional secret is scheduled to expire. This is always provided on
  /// output, regardless of what was sent on input. A timestamp in RFC3339 UTC "Zulu" format, with
  /// nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z". Only one of `expire_time` or `ttl` can be provided.
  final pulumi.Input<String>? expireTime;

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
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the regional secret. eg us-central1
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The rotation time and period for a regional secret. At `next_rotation_time`, Secret Manager
  /// will send a Pub/Sub notification to the topics configured on the Secret. `topics` must be
  /// set to configure rotation.
  /// Structure is documented below.
  final pulumi.Input<RegionalSecretRotation>? rotation;

  /// This must be unique within the project.
  final pulumi.Input<String> secretId;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  final pulumi.Input<Map<String, String>>? tags;

  /// A list of up to 10 Pub/Sub topics to which messages are published when control plane
  /// operations are called on the regional secret or its versions.
  /// Structure is documented below.
  final pulumi.Input<List<RegionalSecretTopic>>? topics;

  /// The TTL for the regional secret. A duration in seconds with up to nine fractional digits,
  /// terminated by 's'. Example: "3.5s". Only one of `ttl` or `expire_time` can be provided.
  final pulumi.Input<String>? ttl;

  /// Mapping from version alias to version name.
  /// A version alias is a string with a maximum length of 63 characters and can contain
  /// uppercase and lowercase letters, numerals, and the hyphen (-) and underscore ('_')
  /// characters. An alias string must start with a letter and cannot be the string
  /// 'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? versionAliases;

  /// Secret Version TTL after destruction request.
  /// This is a part of the delayed delete feature on Secret Version.
  /// For secret with versionDestroyTtl>0, version destruction doesn't happen immediately
  /// on calling destroy instead the version goes to a disabled state and
  /// the actual destruction happens after this TTL expires. It must be atleast 24h.
  final pulumi.Input<String>? versionDestroyTtl;

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
      map['customerManagedEncryption'] = pulumi.Input.mapOptionalInputValue<
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
      map['rotation'] = pulumi.Input.mapOptionalInputValue<
          RegionalSecretRotation,
          Map<String, dynamic>>(rotationValue, (value) => value.toMap());
    }
    map['secretId'] = secretId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final topicsValue = topics;
    if (topicsValue != null) {
      map['topics'] = pulumi.Input.mapOptionalInputValue<
              List<RegionalSecretTopic>, List<Map<String, dynamic>>>(
          topicsValue,
          (value) => pulumi.Input.encodeList<RegionalSecretTopic,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      customerManagedEncryption:
          pulumi.Input.asOptionalInput<RegionalSecretCustomerManagedEncryption>(
              map['customerManagedEncryption']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      expireTime: pulumi.Input.asOptionalInput<String>(map['expireTime']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rotation:
          pulumi.Input.asOptionalInput<RegionalSecretRotation>(map['rotation']),
      secretId: pulumi.Input.asInput<String>(map['secretId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      topics: pulumi.Input.asOptionalInput<List<RegionalSecretTopic>>(
          map['topics']),
      ttl: pulumi.Input.asOptionalInput<String>(map['ttl']),
      versionAliases: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['versionAliases']),
      versionDestroyTtl:
          pulumi.Input.asOptionalInput<String>(map['versionDestroyTtl']),
    );
  }
}
