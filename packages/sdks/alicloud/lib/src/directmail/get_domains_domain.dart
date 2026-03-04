// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainsDomain {
  /// Indicates whether your ownership of the domain is verified.
  final pulumi.Input<String> cnameAuthStatus;

  /// Indicates whether the CNAME record is successfully verified. **Note:** `cname_confirm_status` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> cnameConfirmStatus;

  /// The value of the CNAME record. **Note:** `cname_record` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> cnameRecord;

  /// The time when the DNS record was created.
  final pulumi.Input<String> createTime;

  /// The default domain name. **Note:** `default_domain` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> defaultDomain;

  /// (Available since v1.227.1) The DKIM validation flag. **Note:** `dkim_auth_status` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> dkimAuthStatus;

  /// (Available since v1.227.1) The DKIM public key. **Note:** `dkim_public_key` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> dkimPublicKey;

  /// (Available since v1.227.1) The DKIM Host Record. **Note:** `dkim_rr` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> dkimRr;

  /// (Available since v1.227.1) The DMARC validation flag. **Note:** `dmarc_auth_status` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> dmarcAuthStatus;

  /// (Available since v1.227.1) The DMARC Host Record. **Note:** `dmarc_host_record` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> dmarcHostRecord;

  /// (Available since v1.227.1) The DMARC record. **Note:** `dmarc_record` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> dmarcRecord;

  /// (Available since v1.227.1) The DMARC record value resolved through public DNS. **Note:** `dns_dmarc` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> dnsDmarc;

  /// The MX record value resolved through public DNS. **Note:** `dns_mx` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> dnsMx;

  /// The SPF record value resolved through public DNS. **Note:** `dns_spf` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> dnsSpf;

  /// The TXT record value resolved through public DNS. **Note:** `dns_txt` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> dnsTxt;

  /// The ID of the domain name.
  final pulumi.Input<String> domainId;

  /// The domain name.
  final pulumi.Input<String> domainName;

  /// (Available since v1.227.1) The value of the Domain record.
  final pulumi.Input<String> domainRecord;

  /// The type of the domain. **Note:** `domain_type` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> domainType;

  /// (Available since v1.227.1) The value of the host record. **Note:** `host_record` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> hostRecord;

  /// The status of ICP filing.
  final pulumi.Input<String> icpStatus;

  /// The ID of the Domain.
  final pulumi.Input<String> id;

  /// Indicates whether the MX record is successfully verified.
  final pulumi.Input<String> mxAuthStatus;

  /// The MX verification record provided by the Direct Mail console. **Note:** `mx_record` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> mxRecord;

  /// Indicates whether the SPF record is successfully verified.
  final pulumi.Input<String> spfAuthStatus;

  /// The SPF verification record provided by the Direct Mail console. **Note:** `spf_record` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> spfRecord;

  /// The status of the domain name. Valid values:
  final pulumi.Input<String> status;

  /// The primary domain name. **Note:** `tl_domain_name` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> tlDomainName;

  /// The CNAME verification record provided by the Direct Mail console. **Note:** `tracef_record` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> tracefRecord;

  /// Creates a new [GetDomainsDomain].
  /// [cnameAuthStatus] Indicates whether your ownership of the domain is verified.
  /// [cnameConfirmStatus] Indicates whether the CNAME record is successfully verified. **Note:** `cname_confirm_status` takes effect only if `enable_details` is set to `true`.
  /// [cnameRecord] The value of the CNAME record. **Note:** `cname_record` takes effect only if `enable_details` is set to `true`.
  /// [createTime] The time when the DNS record was created.
  /// [defaultDomain] The default domain name. **Note:** `default_domain` takes effect only if `enable_details` is set to `true`.
  /// [dkimAuthStatus] (Available since v1.227.1) The DKIM validation flag. **Note:** `dkim_auth_status` takes effect only if `enable_details` is set to `true`.
  /// [dkimPublicKey] (Available since v1.227.1) The DKIM public key. **Note:** `dkim_public_key` takes effect only if `enable_details` is set to `true`.
  /// [dkimRr] (Available since v1.227.1) The DKIM Host Record. **Note:** `dkim_rr` takes effect only if `enable_details` is set to `true`.
  /// [dmarcAuthStatus] (Available since v1.227.1) The DMARC validation flag. **Note:** `dmarc_auth_status` takes effect only if `enable_details` is set to `true`.
  /// [dmarcHostRecord] (Available since v1.227.1) The DMARC Host Record. **Note:** `dmarc_host_record` takes effect only if `enable_details` is set to `true`.
  /// [dmarcRecord] (Available since v1.227.1) The DMARC record. **Note:** `dmarc_record` takes effect only if `enable_details` is set to `true`.
  /// [dnsDmarc] (Available since v1.227.1) The DMARC record value resolved through public DNS. **Note:** `dns_dmarc` takes effect only if `enable_details` is set to `true`.
  /// [dnsMx] The MX record value resolved through public DNS. **Note:** `dns_mx` takes effect only if `enable_details` is set to `true`.
  /// [dnsSpf] The SPF record value resolved through public DNS. **Note:** `dns_spf` takes effect only if `enable_details` is set to `true`.
  /// [dnsTxt] The TXT record value resolved through public DNS. **Note:** `dns_txt` takes effect only if `enable_details` is set to `true`.
  /// [domainId] The ID of the domain name.
  /// [domainName] The domain name.
  /// [domainRecord] (Available since v1.227.1) The value of the Domain record.
  /// [domainType] The type of the domain. **Note:** `domain_type` takes effect only if `enable_details` is set to `true`.
  /// [hostRecord] (Available since v1.227.1) The value of the host record. **Note:** `host_record` takes effect only if `enable_details` is set to `true`.
  /// [icpStatus] The status of ICP filing.
  /// [id] The ID of the Domain.
  /// [mxAuthStatus] Indicates whether the MX record is successfully verified.
  /// [mxRecord] The MX verification record provided by the Direct Mail console. **Note:** `mx_record` takes effect only if `enable_details` is set to `true`.
  /// [spfAuthStatus] Indicates whether the SPF record is successfully verified.
  /// [spfRecord] The SPF verification record provided by the Direct Mail console. **Note:** `spf_record` takes effect only if `enable_details` is set to `true`.
  /// [status] The status of the domain name. Valid values:
  /// [tlDomainName] The primary domain name. **Note:** `tl_domain_name` takes effect only if `enable_details` is set to `true`.
  /// [tracefRecord] The CNAME verification record provided by the Direct Mail console. **Note:** `tracef_record` takes effect only if `enable_details` is set to `true`.
  GetDomainsDomain({
    required this.cnameAuthStatus,
    required this.cnameConfirmStatus,
    required this.cnameRecord,
    required this.createTime,
    required this.defaultDomain,
    required this.dkimAuthStatus,
    required this.dkimPublicKey,
    required this.dkimRr,
    required this.dmarcAuthStatus,
    required this.dmarcHostRecord,
    required this.dmarcRecord,
    required this.dnsDmarc,
    required this.dnsMx,
    required this.dnsSpf,
    required this.dnsTxt,
    required this.domainId,
    required this.domainName,
    required this.domainRecord,
    required this.domainType,
    required this.hostRecord,
    required this.icpStatus,
    required this.id,
    required this.mxAuthStatus,
    required this.mxRecord,
    required this.spfAuthStatus,
    required this.spfRecord,
    required this.status,
    required this.tlDomainName,
    required this.tracefRecord,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cnameAuthStatus': cnameAuthStatus,
      'cnameConfirmStatus': cnameConfirmStatus,
      'cnameRecord': cnameRecord,
      'createTime': createTime,
      'defaultDomain': defaultDomain,
      'dkimAuthStatus': dkimAuthStatus,
      'dkimPublicKey': dkimPublicKey,
      'dkimRr': dkimRr,
      'dmarcAuthStatus': dmarcAuthStatus,
      'dmarcHostRecord': dmarcHostRecord,
      'dmarcRecord': dmarcRecord,
      'dnsDmarc': dnsDmarc,
      'dnsMx': dnsMx,
      'dnsSpf': dnsSpf,
      'dnsTxt': dnsTxt,
      'domainId': domainId,
      'domainName': domainName,
      'domainRecord': domainRecord,
      'domainType': domainType,
      'hostRecord': hostRecord,
      'icpStatus': icpStatus,
      'id': id,
      'mxAuthStatus': mxAuthStatus,
      'mxRecord': mxRecord,
      'spfAuthStatus': spfAuthStatus,
      'spfRecord': spfRecord,
      'status': status,
      'tlDomainName': tlDomainName,
      'tracefRecord': tracefRecord,
    };
  }

  factory GetDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomain(
      cnameAuthStatus: pulumi.Input.fromValue(map['cnameAuthStatus'] as String),
      cnameConfirmStatus: pulumi.Input.fromValue(
        map['cnameConfirmStatus'] as String,
      ),
      cnameRecord: pulumi.Input.fromValue(map['cnameRecord'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      defaultDomain: pulumi.Input.fromValue(map['defaultDomain'] as String),
      dkimAuthStatus: pulumi.Input.fromValue(map['dkimAuthStatus'] as String),
      dkimPublicKey: pulumi.Input.fromValue(map['dkimPublicKey'] as String),
      dkimRr: pulumi.Input.fromValue(map['dkimRr'] as String),
      dmarcAuthStatus: pulumi.Input.fromValue(map['dmarcAuthStatus'] as String),
      dmarcHostRecord: pulumi.Input.fromValue(map['dmarcHostRecord'] as String),
      dmarcRecord: pulumi.Input.fromValue(map['dmarcRecord'] as String),
      dnsDmarc: pulumi.Input.fromValue(map['dnsDmarc'] as String),
      dnsMx: pulumi.Input.fromValue(map['dnsMx'] as String),
      dnsSpf: pulumi.Input.fromValue(map['dnsSpf'] as String),
      dnsTxt: pulumi.Input.fromValue(map['dnsTxt'] as String),
      domainId: pulumi.Input.fromValue(map['domainId'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      domainRecord: pulumi.Input.fromValue(map['domainRecord'] as String),
      domainType: pulumi.Input.fromValue(map['domainType'] as String),
      hostRecord: pulumi.Input.fromValue(map['hostRecord'] as String),
      icpStatus: pulumi.Input.fromValue(map['icpStatus'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      mxAuthStatus: pulumi.Input.fromValue(map['mxAuthStatus'] as String),
      mxRecord: pulumi.Input.fromValue(map['mxRecord'] as String),
      spfAuthStatus: pulumi.Input.fromValue(map['spfAuthStatus'] as String),
      spfRecord: pulumi.Input.fromValue(map['spfRecord'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tlDomainName: pulumi.Input.fromValue(map['tlDomainName'] as String),
      tracefRecord: pulumi.Input.fromValue(map['tracefRecord'] as String),
    );
  }
}
