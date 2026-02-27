import 'package:pulumi/pulumi.dart' hide Config;
import 'dns_authorization_args.dart';
import 'dns_resource_record_response.dart';

/// Creates a new DnsAuthorization in a given project and location.
class DnsAuthorization extends CustomResource {
  /// The creation timestamp of a DnsAuthorization.
  late final Output<String> createTime;

  /// One or more paragraphs of text description of a DnsAuthorization.
  late final Output<String> description;

  /// Required. A user-provided name of the dns authorization.
  late final Output<String> dnsAuthorizationId;

  /// DNS Resource Record that needs to be added to DNS configuration.
  late final Output<DnsResourceRecordResponse> dnsResourceRecord;

  /// Immutable. A domain that is being authorized. A DnsAuthorization resource covers a single domain and its wildcard, e.g. authorization for `example.com` can be used to issue certificates for `example.com` and `*.example.com`.
  late final Output<String> domain;

  /// Set of labels associated with a DnsAuthorization.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// A user-defined name of the dns authorization. DnsAuthorization names must be unique globally and match pattern `projects/*/locations/*/dnsAuthorizations/*`.
  late final Output<String> name;
  late final Output<String> project;

  /// The last update timestamp of a DnsAuthorization.
  late final Output<String> updateTime;

  DnsAuthorization(
    String name, {
    DnsAuthorizationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:certificatemanager/v1:DnsAuthorization',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.dnsAuthorizationId = registerOutput<String>('dnsAuthorizationId');
    this.dnsResourceRecord =
        registerOutput<DnsResourceRecordResponse>('dnsResourceRecord');
    this.domain = registerOutput<String>('domain');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
