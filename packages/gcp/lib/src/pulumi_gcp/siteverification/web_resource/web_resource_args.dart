// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_resource_site/web_resource_site.dart';

/// The set of arguments for WebResource.
class WebResourceArgs {
  /// Container for the address and type of a site for which a verification token will be verified.
  /// Structure is documented below.
  final pulumi.Input<WebResourceSite> site;

  /// The verification method for the Site Verification system to use to verify
  /// this site or domain.
  /// Possible values are: `ANALYTICS`, `DNS_CNAME`, `DNS_TXT`, `FILE`, `META`, `TAG_MANAGER`.
  final pulumi.Input<String> verificationMethod;

  WebResourceArgs({
    required this.site,
    required this.verificationMethod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['site'] =
        pulumi.Input.mapInputValue<WebResourceSite, Map<String, dynamic>>(
            site, (value) => value.toMap());
    map['verificationMethod'] = verificationMethod;
    return map;
  }

  factory WebResourceArgs.fromMap(Map<String, dynamic> map) {
    return WebResourceArgs(
      site: pulumi.Input.asInput<WebResourceSite>(map['site']),
      verificationMethod:
          pulumi.Input.asInput<String>(map['verificationMethod']),
    );
  }
}
