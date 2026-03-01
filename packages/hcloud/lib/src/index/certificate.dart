import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';

/// Alias for `hcloud.UploadedCertificate` to remain backwards compatible.
/// Deprecated.
class Certificate extends pulumi.CustomResource {
  late final pulumi.Output<String> certificate;
  late final pulumi.Output<String> created;
  late final pulumi.Output<List<String>> domainNames;
  late final pulumi.Output<String> fingerprint;
  late final pulumi.Output<Map<String, String>?> labels;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> notValidAfter;
  late final pulumi.Output<String> notValidBefore;
  late final pulumi.Output<String> privateKey;
  late final pulumi.Output<String> type;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_index_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificate = registerOutput<String>('certificate');
    this.created = registerOutput<String>('created');
    this.domainNames = registerOutput<List<String>>('domainNames');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.notValidAfter = registerOutput<String>('notValidAfter');
    this.notValidBefore = registerOutput<String>('notValidBefore');
    this.privateKey = registerOutput<String>('privateKey');
    this.type = registerOutput<String>('type');
  }
}
