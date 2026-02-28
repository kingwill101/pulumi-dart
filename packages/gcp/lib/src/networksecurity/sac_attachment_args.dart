// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sac_attachment_symantec_options.dart';

/// {@template pulumi_networksecurity_sac_attachment_sac_attachment_args_doc}
/// The set of arguments for SacAttachment.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_sac_attachment_sac_attachment_args_doc}
class SacAttachmentArgs {
  /// Case-insensitive ISO-3166 alpha-2 country code used for localization. Only valid for Symantec attachments.
  final pulumi.Input<String>? country;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the SACAttachment resource. eg us-central1
  final pulumi.Input<String> location;

  /// Identifier. Resource name
  final pulumi.Input<String>? name;

  /// NCC Gateway associated with the attachment. This can be input as an ID or a full resource name.
  final pulumi.Input<String> nccGateway;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// SAC Realm which owns the attachment. This can be input as an ID or a full resource name.
  final pulumi.Input<String> sacRealm;

  /// Configuration required for Symantec attachments.
  /// Structure is documented below.
  final pulumi.Input<SacAttachmentSymantecOptions>? symantecOptions;

  /// Case-sensitive tzinfo identifier used for localization. Only valid for Symantec attachments.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [SacAttachmentArgs].
  /// [country] Case-insensitive ISO-3166 alpha-2 country code used for localization. Only valid for Symantec attachments.
  /// [labels] Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [location] The location of the SACAttachment resource. eg us-central1
  /// [name] Identifier. Resource name
  /// [nccGateway] NCC Gateway associated with the attachment. This can be input as an ID or a full resource name.
  /// [project] The ID of the project in which the resource belongs.
  /// [sacRealm] SAC Realm which owns the attachment. This can be input as an ID or a full resource name.
  /// [symantecOptions] Configuration required for Symantec attachments.
  /// [timeZone] Case-sensitive tzinfo identifier used for localization. Only valid for Symantec attachments.
  SacAttachmentArgs({
    String? country,
    Map<String, String>? labels,
    required String location,
    String? name,
    required String nccGateway,
    String? project,
    required String sacRealm,
    SacAttachmentSymantecOptions? symantecOptions,
    String? timeZone,
  })  : country = pulumi.Input.asOptionalInput<String>(country),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        nccGateway = pulumi.Input.asInput<String>(nccGateway),
        project = pulumi.Input.asOptionalInput<String>(project),
        sacRealm = pulumi.Input.asInput<String>(sacRealm),
        symantecOptions =
            pulumi.Input.asOptionalInput<SacAttachmentSymantecOptions>(
                symantecOptions),
        timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countryValue = country;
    if (countryValue != null) {
      map['country'] = countryValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['nccGateway'] = nccGateway;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sacRealm'] = sacRealm;
    final symantecOptionsValue = symantecOptions;
    if (symantecOptionsValue != null) {
      map['symantecOptions'] = pulumi.Input.mapOptionalInputValue<
          SacAttachmentSymantecOptions,
          Map<String, dynamic>>(symantecOptionsValue, (value) => value.toMap());
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    return map;
  }

  factory SacAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return SacAttachmentArgs(
      country: map['country'] == null ? null : map['country'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nccGateway: map['nccGateway'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sacRealm: map['sacRealm'] as String,
      symantecOptions: map['symantecOptions'] == null
          ? null
          : SacAttachmentSymantecOptions.fromMap(
              (map['symantecOptions'] as Map).cast<String, dynamic>()),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}
