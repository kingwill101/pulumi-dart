// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_resource_site.dart';

/// {@template pulumi_siteverification_web_resource_web_resource_args_doc}
/// The set of arguments for WebResource.
/// {@endtemplate}
/// {@macro pulumi_siteverification_web_resource_web_resource_args_doc}
class WebResourceArgs {
  /// Container for the address and type of a site for which a verification token will be verified.
  /// Structure is documented below.
  final pulumi.Input<WebResourceSite> site;
  /// The verification method for the Site Verification system to use to verify
  /// this site or domain.
  /// Possible values are: `ANALYTICS`, `DNS_CNAME`, `DNS_TXT`, `FILE`, `META`, `TAG_MANAGER`.
  final pulumi.Input<String> verificationMethod;

  /// Creates a new [WebResourceArgs].
  /// [site] Container for the address and type of a site for which a verification token will be verified.
  /// [verificationMethod] The verification method for the Site Verification system to use to verify
  WebResourceArgs({
    required WebResourceSite site,
    required String verificationMethod,
  }) :
      site = pulumi.Input.asInput<WebResourceSite>(site),
      verificationMethod = pulumi.Input.asInput<String>(verificationMethod);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'site': pulumi.Input.mapInputValue<WebResourceSite, Map<String, dynamic>>(site, (value) => value.toMap()),
      'verificationMethod': verificationMethod,
    };
  }

  factory WebResourceArgs.fromMap(Map<String, dynamic> map) {
    return WebResourceArgs(
      site: WebResourceSite.fromMap((map['site'] as Map).cast<String, dynamic>()),
      verificationMethod: map['verificationMethod'] as String,
    );
  }
}

