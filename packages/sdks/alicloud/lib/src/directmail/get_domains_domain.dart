// ignore_for_file: unused_element, unnecessary_cast


class GetDomainsDomain {
  /// Indicates whether your ownership of the domain is verified.
  final String cnameAuthStatus;
  /// Indicates whether the CNAME record is successfully verified. **Note:** `cname_confirm_status` takes effect only if `enable_details` is set to `true`.
  final String cnameConfirmStatus;
  /// The value of the CNAME record. **Note:** `cname_record` takes effect only if `enable_details` is set to `true`.
  final String cnameRecord;
  /// The time when the DNS record was created.
  final String createTime;
  /// The default domain name. **Note:** `default_domain` takes effect only if `enable_details` is set to `true`.
  final String defaultDomain;
  /// (Available since v1.227.1) The DKIM validation flag. **Note:** `dkim_auth_status` takes effect only if `enable_details` is set to `true`.
  final String dkimAuthStatus;
  /// (Available since v1.227.1) The DKIM public key. **Note:** `dkim_public_key` takes effect only if `enable_details` is set to `true`.
  final String dkimPublicKey;
  /// (Available since v1.227.1) The DKIM Host Record. **Note:** `dkim_rr` takes effect only if `enable_details` is set to `true`.
  final String dkimRr;
  /// (Available since v1.227.1) The DMARC validation flag. **Note:** `dmarc_auth_status` takes effect only if `enable_details` is set to `true`.
  final String dmarcAuthStatus;
  /// (Available since v1.227.1) The DMARC Host Record. **Note:** `dmarc_host_record` takes effect only if `enable_details` is set to `true`.
  final String dmarcHostRecord;
  /// (Available since v1.227.1) The DMARC record. **Note:** `dmarc_record` takes effect only if `enable_details` is set to `true`.
  final String dmarcRecord;
  /// (Available since v1.227.1) The DMARC record value resolved through public DNS. **Note:** `dns_dmarc` takes effect only if `enable_details` is set to `true`.
  final String dnsDmarc;
  /// The MX record value resolved through public DNS. **Note:** `dns_mx` takes effect only if `enable_details` is set to `true`.
  final String dnsMx;
  /// The SPF record value resolved through public DNS. **Note:** `dns_spf` takes effect only if `enable_details` is set to `true`.
  final String dnsSpf;
  /// The TXT record value resolved through public DNS. **Note:** `dns_txt` takes effect only if `enable_details` is set to `true`.
  final String dnsTxt;
  /// The ID of the domain name.
  final String domainId;
  /// The domain name.
  final String domainName;
  /// (Available since v1.227.1) The value of the Domain record.
  final String domainRecord;
  /// The type of the domain. **Note:** `domain_type` takes effect only if `enable_details` is set to `true`.
  final String domainType;
  /// (Available since v1.227.1) The value of the host record. **Note:** `host_record` takes effect only if `enable_details` is set to `true`.
  final String hostRecord;
  /// The status of ICP filing.
  final String icpStatus;
  /// The ID of the Domain.
  final String id;
  /// Indicates whether the MX record is successfully verified.
  final String mxAuthStatus;
  /// The MX verification record provided by the Direct Mail console. **Note:** `mx_record` takes effect only if `enable_details` is set to `true`.
  final String mxRecord;
  /// Indicates whether the SPF record is successfully verified.
  final String spfAuthStatus;
  /// The SPF verification record provided by the Direct Mail console. **Note:** `spf_record` takes effect only if `enable_details` is set to `true`.
  final String spfRecord;
  /// The status of the domain name. Valid values:
  final String status;
  /// The primary domain name. **Note:** `tl_domain_name` takes effect only if `enable_details` is set to `true`.
  final String tlDomainName;
  /// The CNAME verification record provided by the Direct Mail console. **Note:** `tracef_record` takes effect only if `enable_details` is set to `true`.
  final String tracefRecord;

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
      cnameAuthStatus: map['cnameAuthStatus'] as String,
      cnameConfirmStatus: map['cnameConfirmStatus'] as String,
      cnameRecord: map['cnameRecord'] as String,
      createTime: map['createTime'] as String,
      defaultDomain: map['defaultDomain'] as String,
      dkimAuthStatus: map['dkimAuthStatus'] as String,
      dkimPublicKey: map['dkimPublicKey'] as String,
      dkimRr: map['dkimRr'] as String,
      dmarcAuthStatus: map['dmarcAuthStatus'] as String,
      dmarcHostRecord: map['dmarcHostRecord'] as String,
      dmarcRecord: map['dmarcRecord'] as String,
      dnsDmarc: map['dnsDmarc'] as String,
      dnsMx: map['dnsMx'] as String,
      dnsSpf: map['dnsSpf'] as String,
      dnsTxt: map['dnsTxt'] as String,
      domainId: map['domainId'] as String,
      domainName: map['domainName'] as String,
      domainRecord: map['domainRecord'] as String,
      domainType: map['domainType'] as String,
      hostRecord: map['hostRecord'] as String,
      icpStatus: map['icpStatus'] as String,
      id: map['id'] as String,
      mxAuthStatus: map['mxAuthStatus'] as String,
      mxRecord: map['mxRecord'] as String,
      spfAuthStatus: map['spfAuthStatus'] as String,
      spfRecord: map['spfRecord'] as String,
      status: map['status'] as String,
      tlDomainName: map['tlDomainName'] as String,
      tracefRecord: map['tracefRecord'] as String,
    );
  }
}

