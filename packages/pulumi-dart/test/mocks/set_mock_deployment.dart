import 'package:pulumi/src/deployment/deployment.dart';

void setMockDeployment(Deployment mockDeployment) {
  getCurrentDeployment = () => mockDeployment;
}
