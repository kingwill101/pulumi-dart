import 'package:pulumi/pulumi.dart';
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
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.dnsAuthorizationId = Output.createUnknown<String>();
    this.dnsResourceRecord = Output.createUnknown<DnsResourceRecordResponse>();
    this.domain = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
