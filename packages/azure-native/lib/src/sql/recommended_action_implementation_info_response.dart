// ignore_for_file: unused_element, unnecessary_cast


/// Contains information for manual implementation for an Azure SQL Database, Server or Elastic Pool Recommended Action.
class RecommendedActionImplementationInfoResponse {
  /// Gets the method in which this recommended action can be manually implemented. e.g., TSql, AzurePowerShell.
  final String method;
  /// Gets the manual implementation script. e.g., T-SQL script that could be executed on the database.
  final String script;

  /// Creates a new [RecommendedActionImplementationInfoResponse].
  /// [method] Gets the method in which this recommended action can be manually implemented. e.g., TSql, AzurePowerShell.
  /// [script] Gets the manual implementation script. e.g., T-SQL script that could be executed on the database.
  RecommendedActionImplementationInfoResponse({
    required this.method,
    required this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'script': script,
    };
  }

  factory RecommendedActionImplementationInfoResponse.fromMap(Map<String, dynamic> map) {
    return RecommendedActionImplementationInfoResponse(
      method: map['method'] as String,
      script: map['script'] as String,
    );
  }
}

