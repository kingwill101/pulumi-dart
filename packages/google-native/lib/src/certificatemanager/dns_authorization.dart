import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_authorization_args.dart';
import 'dns_resource_record_response.dart';

/// Creates a new DnsAuthorization in a given project and location.
class DnsAuthorization extends pulumi.CustomResource {
  /// The creation timestamp of a DnsAuthorization.
  late final pulumi.Output<String> createTime;

  /// One or more paragraphs of text description of a DnsAuthorization.
  late final pulumi.Output<String> description;

  /// Required. A user-provided name of the dns authorization.
  late final pulumi.Output<String> dnsAuthorizationId;

  /// DNS Resource Record that needs to be added to DNS configuration.
  late final pulumi.Output<DnsResourceRecordResponse> dnsResourceRecord;

  /// Immutable. A domain that is being authorized. A DnsAuthorization resource covers a single domain and its wildcard, e.g. authorization for `example.com` can be used to issue certificates for `example.com` and `*.example.com`.
  late final pulumi.Output<String> domain;

  /// Set of labels associated with a DnsAuthorization.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// A user-defined name of the dns authorization. DnsAuthorization names must be unique globally and match pattern `projects/*/locations/*/dnsAuthorizations/*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The last update timestamp of a DnsAuthorization.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DnsAuthorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsAuthorization]. {@macro pulumi_certificatemanager_v1_dns_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsAuthorization(
    String name, {
    DnsAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:certificatemanager/v1:DnsAuthorization',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.dnsAuthorizationId = registerOutput<String>('dnsAuthorizationId');
    this.dnsResourceRecord = registerOutput<DnsResourceRecordResponse>(
      'dnsResourceRecord',
    );
    this.domain = registerOutput<String>('domain');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
