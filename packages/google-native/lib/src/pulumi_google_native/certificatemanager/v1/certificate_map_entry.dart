import 'package:pulumi/pulumi.dart';
import 'certificate_map_entry_args.dart';

/// Creates a new CertificateMapEntry in a given project and location.
class CertificateMapEntry extends CustomResource {
  /// Required. A user-provided name of the certificate map entry.
  late final Output<String> certificateMapEntryId;
  late final Output<String> certificateMapId;

  /// A set of Certificates defines for the given `hostname`. There can be defined up to four certificates in each Certificate Map Entry. Each certificate must match pattern `projects/*/locations/*/certificates/*`.
  late final Output<List<String>> certificates;

  /// The creation timestamp of a Certificate Map Entry.
  late final Output<String> createTime;

  /// One or more paragraphs of text description of a certificate map entry.
  late final Output<String> description;

  /// A Hostname (FQDN, e.g. `example.com`) or a wildcard hostname expression (`*.example.com`) for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for selecting a proper certificate.
  late final Output<String> hostname;

  /// Set of labels associated with a Certificate Map Entry.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// A predefined matcher for particular cases, other than SNI selection.
  late final Output<String> matcher;

  /// A user-defined name of the Certificate Map Entry. Certificate Map Entry names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*/certificateMapEntries/*`.
  late final Output<String> name;
  late final Output<String> project;

  /// A serving state of this Certificate Map Entry.
  late final Output<String> state;

  /// The update timestamp of a Certificate Map Entry.
  late final Output<String> updateTime;

  CertificateMapEntry(
    String name, {
    CertificateMapEntryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:certificatemanager/v1:CertificateMapEntry',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateMapEntryId = Output.createUnknown<String>();
    this.certificateMapId = Output.createUnknown<String>();
    this.certificates = Output.createUnknown<List<String>>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.hostname = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.matcher = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
