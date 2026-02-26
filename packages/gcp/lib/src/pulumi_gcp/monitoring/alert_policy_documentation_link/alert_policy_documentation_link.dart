// ignore_for_file: unused_element, unnecessary_cast

class AlertPolicyDocumentationLink {
  /// A short display name for the link. The display name must not be empty or exceed 63 characters. Example: "playbook".
  final String? displayName;

  /// The url of a webpage. A url can be templatized by using variables in the path or the query parameters. The total length of a URL should not exceed 2083 characters before and after variable expansion. Example: "https://my_domain.com/playbook?name=${resource.name}".
  final String? url;

  AlertPolicyDocumentationLink({
    this.displayName,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory AlertPolicyDocumentationLink.fromMap(Map<String, dynamic> map) {
    return AlertPolicyDocumentationLink(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
